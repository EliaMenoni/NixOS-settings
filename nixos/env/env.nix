{
  pkgs,
  ...
}:{
    imports = [
	./pkg.nix
        ./network.nix
        ./user.nix
        ./audio.nix
        ./general.nix
	./openssh.nix
	./desktop.nix
    ];

    services.pcscd.enable = true;
    services.pcscd.plugins = [ pkgs.acsccid pkgs.ccid pkgs.libacr38u pkgs.scmccid ];
}
