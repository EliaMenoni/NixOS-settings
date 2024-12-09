{
	pkgs,
	...
}:{
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

    # TERMINAL
    tilix

    # GNOME
    gnome.gnome-tweaks
    gnome.gnome-shell-extensions
    gnomeExtensions.pop-shell
    gnomeExtensions.just-perfection

    # FONTS
    font-awesome
    fira-code
  ];
}
