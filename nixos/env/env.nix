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

    services.fprintd.enable = true;
    services.fprintd.tod.enable = true;
    services.fprintd.tod.driver = pkgs.libfprint-2-tod1-vfs0090;
#    services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix;
    security.pam.services.login.fprintAuth = true;	
}
