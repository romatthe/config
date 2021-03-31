{ config, pkgs, inputs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  home-manager.users.romatthe = {
    home.packages = [
      pkgs.ulauncher
    ];

    wayland.windowManager.sway = {
      enable = true;
      package = pkgs.nixpkgs-extra.sway-borders;
    };
  };   
}
