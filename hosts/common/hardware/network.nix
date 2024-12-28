{lib, ...}:{
  networking.networkmanager.enable = lib.mkForce true;
  users.users.edu.extraGroups = ["networkmanager"];
  networking.useDHCP = lib.mkDefault true;
  time.timeZone = "America/Sao_Paulo";

  location = {
    latitude = -23.5489;
    longitude = -46.6388;
  };
}
