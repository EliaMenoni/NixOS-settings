{
  pkgs,
  ...
}: {
  environment.systemPackages = [
    pkgs.home-manager
    pkgs.git
  ];
}
