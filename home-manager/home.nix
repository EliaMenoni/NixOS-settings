
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    ./pkg.nix
  ];

  nixpkgs = {
    overlays = [];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "emenoni";
    homeDirectory = "/home/emenoni";
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  #Enable FONTS
  fonts.fontconfig.enable  = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
