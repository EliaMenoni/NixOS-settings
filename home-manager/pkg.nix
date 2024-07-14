{
  pkgs,
  ...
}: {

  imports = [
    ./app_conf/git.nix
    ./app_conf/zsh.nix
    ./app_conf/firefox.nix
    ./app_conf/nixvim.nix
  ];

  home.packages = with pkgs; [
    typora
    # FONTS
    font-awesome
    fira-code
  ];
}
