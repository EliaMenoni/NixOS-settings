{
  pkgs,
  ...
}: {
  environment.systemPackages = [
    pkgs.home-manager
    pkgs.git
    pkgs.usbutils
    pkgs.fprintd
#    pkgs.owl
    pkgs.xorg.xrandr   
  ];
}
