{ ... }:
{
  services.mako = {
    enable = true;
    settings = {
      sort = "-time";
      layer = "top";
      background-color = "#1e1e2e";
      width = 800;
      height = 500;
      border-size = 2;
      border-color = "#89dceb";
      border-radius = 15;
      progress-color = "over #313244";
      text-color = "#cdd6f4";
      icons = 0;
      max-icon-size = 64;
      default-timeout = 5000;
      ignore-timeout = 1;
      font = "Cascadia Code 12";
      "app-name=discord" = {
        format = "<b>◇ %s</b>\\n%b";
      };
    };
  };
}
