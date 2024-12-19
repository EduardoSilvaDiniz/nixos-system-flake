{
  services.tlp = {
    enable = false;
    settings = {
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "balanced";
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_BAT = 30;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_DRIVER_OPMODE_ON_AC = "active";
      CPU_DRIVER_OPMODE_ON_BAT = "active";
      STOP_CHARGE_THRESH_BAT0 = 80;
      USB_AUTOSUSPEND = 0;
      USB_EXCLUDE_WWAN = 1;
      # WIFI_PWR_ON_AC = "off";
      # WIFI_PWR_ON_BAT = "off";
      DEVICES_TO_ENABLE_ON_STARTUP = "bluetooth wifi wwan";
      RESTORE_DEVICE_STATE_ON_STARTUP = 0;
      USB_ALLOWLIST = "046d:c52b"; #Logitech mouse
      USB_EXCLUDE_BTUSB = 1;
      USB_EXCLUDE_PHONE = 1;
      # RUNTIME_PM_BLACKLIST = "046d:c52b";
    };
  };
}
