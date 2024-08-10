  users.users.edu = {
    isNormalUser = true;
    description = "Eduardo Silva";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

