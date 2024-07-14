{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.emenoni = {
    isNormalUser = true;
    description = "Elia Menoni";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
