{
  lib,
  config,
  ...
}: {
  services.tlp = {
    enable =
      lib.mkDefault ((lib.versionOlder (lib.versions.majorMinor lib.version) "21.05")
        || !config.services.power-profiles-daemon.enable);
    settings = {
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "balanced";
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      CPU_BOOST_ON_AC = 0;
      CPU_BOOST_ON_BAT = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_BAT = 30;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_DRIVER_OPMODE_ON_AC = "active";
      CPU_DRIVER_OPMODE_ON_BAT = "active";
      STOP_CHARGE_THRESH_BAT0 = 80;
      USB_EXCLUDE_WWAN = 1;
      DEVICES_TO_ENABLE_ON_STARTUP = "bluetooth wifi wwan";
      RESTORE_DEVICE_STATE_ON_STARTUP = 0;
    };
  };
}
