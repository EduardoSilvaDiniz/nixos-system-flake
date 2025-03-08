{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    glances
    bandwhich # network utilization monitor
    hwinfo
    iftop
    ioping
    lm_sensors
    lsof
    pciutils # lspci
    powertop
    smartmontools
    sysstat # sar, iostat, pidstat
    unixtools.netstat
    usbutils # lsusb
    binutils
		## essential for some applications
		gcc
		make
		cmake
		python3
  ];
}
