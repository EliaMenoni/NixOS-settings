{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    
    shellAliases = {
      ll = "ls -al";
      rb = "sudo nixos-rebuild switch --flake ~/.nixos/minimal-nix#pc-lav";
      upg = "sudo nixos-rebuild switch --upgrade --flake ~/.nixos/minimal-nix#pc-lav";
      hrb = "home-manager switch --flake ~/.nixos/minimal-nix#main";
      pkgs = "nano ~/.nixos/minimal-nix/home-manager/pkg.nix";
      
      #FOLDERS
      uni = "cd ~/Documents/UNI";

    };

    oh-my-zsh = {
      enable = true;
      plugins = ["git" "sudo"];
      theme = "agnoster";
    };
  };
}
