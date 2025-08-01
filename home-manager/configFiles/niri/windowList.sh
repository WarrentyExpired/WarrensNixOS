#!/usr/bin/env bash

# fuzzel-niri: A script for listing active windows in niri and allowing selection via fuzzel
# Version: 1.0.0
# Author: Paul H. McClelland
# Date: 2025-07-11
# License: GPL v3.0

# Check if niri is running
if ! pgrep -x "niri" > /dev/null; then
    echo "Error: niri is not running" >&2
    exit 1
fi

# Check if fuzzel is available
if ! command -v fuzzel &> /dev/null; then
    echo "Error: fuzzel is not installed" >&2
    exit 1
fi

# Get window list from niri
windows_output=$(niri msg windows 2>&1)
exit_code=$?

if [ $exit_code -ne 0 ]; then
    echo "Error: Could not get window list from niri" >&2
    echo "niri msg output: $windows_output" >&2
    exit 1
fi

# Parse the plain text output from niri
# Format: Window ID X: followed by Title and App ID on separate lines
window_list=""
focused_window=""
window_id=""
title=""
app_id=""
is_focused=false

while IFS= read -r line; do
    if [[ $line =~ ^Window\ ID\ ([0-9]+): ]]; then
        # If we have a complete window entry, add it to the appropriate list
        if [[ -n "$window_id" && -n "$title" && -n "$app_id" ]]; then
            window_entry="${window_id}: ${app_id} - ${title}"
            if [[ "$is_focused" == true ]]; then
                focused_window="$window_entry"
            else
                window_list="${window_list}${window_entry}\n"
            fi
        fi
        
        # Start new window entry
        window_id="${BASH_REMATCH[1]}"
        title=""
        app_id=""
        is_focused=false
        
        # Check if this line also contains "(focused)" to mark current window
        if [[ $line =~ \(focused\) ]]; then
            window_id="${window_id} [FOCUSED]"
            is_focused=true
        fi
        
    elif [[ $line =~ ^[[:space:]]*Title:[[:space:]]*\"(.*)\"$ ]]; then
        title="${BASH_REMATCH[1]}"
    elif [[ $line =~ ^[[:space:]]*App\ ID:[[:space:]]*\"(.*)\"$ ]]; then
        app_id="${BASH_REMATCH[1]}"
    fi
done <<< "$windows_output"

# Don't forget the last window
if [[ -n "$window_id" && -n "$title" && -n "$app_id" ]]; then
    window_entry="${window_id}: ${app_id} - ${title}"
    if [[ "$is_focused" == true ]]; then
        focused_window="$window_entry"
    else
        window_list="${window_list}${window_entry}\n"
    fi
fi

# Combine focused window at the top, then other windows
if [[ -n "$focused_window" ]]; then
    window_list="${focused_window}\n${window_list}"
fi

# Remove trailing newline and convert \n to actual newlines
window_list=$(echo -e "$window_list" | sed '$d')

if [ -z "$window_list" ]; then
    echo "Error: Could not parse window information" >&2
    echo "Raw output was: $windows_output" >&2
    exit 1
fi

# If no windows found
if [ -z "$window_list" ]; then
    echo "No windows found" >&2
    exit 1
fi

# Show fuzzel menu and get selection
selected=$(echo "$window_list" | fuzzel --dmenu --prompt "Select window: ")

# Exit if no selection made
if [ -z "$selected" ]; then
    exit 0
fi

# Extract window ID from selection (everything before the first colon)
window_id=$(echo "$selected" | cut -d':' -f1 | sed 's/ \[FOCUSED\]$//')

# Focus the selected window
if [ -n "$window_id" ]; then
    niri msg action focus-window --id "$window_id"
    if [ $? -eq 0 ]; then
        echo "Focused window: $selected"
    else
        echo "Error: Could not focus window $window_id" >&2
        exit 1
    fi
else
    echo "Error: Could not extract window ID" >&2
    exit 1
fi
