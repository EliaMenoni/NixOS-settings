{
  pkgs,
  ...
}: {

  imports = [
    ./app_conf/git.nix
    ./app_conf/zsh.nix
    ./app_conf/firefox.nix
    ./app_conf/vim.nix
  ];

  home.packages = with pkgs; [
    # SOFTWARE
    typora
    chromium
    vscode
    spotify
    pcsc-tools
    obsidian
    netflix
    localsend    
#    opendrop    
    # TERMINAL
    tilix

    # GNOME
#    gnome.gnome-terminal
    gnome.gnome-tweaks
    gnome.gnome-shell-extensions

#    gnomeExtensions.tiling-assistant
    gnomeExtensions.pop-shell
#    gnomeExtensions.hide-top-bar
    gnomeExtensions.just-perfection
#    gnomeExtensions.fullscreen-to-empty-workspace
#    gnomeExtensions.custom-window-controls

    # FONTS
    font-awesome
    fira-code
  ];
}
