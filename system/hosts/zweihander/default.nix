{pkgs, ...}: {
  networking.hostName = "zweihander";
  system.stateVersion = "24.11";
  nixpkgs.config.allowUnfree = true;
  powerManagement.enable = true;
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = ["https://aseipp-nix-cache.freetls.fastly.net"];
    auto-optimise-store = true;
  };
  environment.systemPackages = with pkgs; [home-manager];
  imports = [
    ./hardware.nix
		## Desktops
    ../../core/desktop/gnome.nix
    # ../../core/desktop/plasma.nix
		## Login-Manager
		../../core/login-manager/gdm.nix
		# ../../core/login-manager/none.nix
		# ../../core/login-manager/sddm.nix
		# ../../core/login-manager/greetd.nix
		## Programs
		../../core/programs/steam.nix
		../../core/programs/tools.nix
    ## Services
    ../../core/services/android.nix
    ../../core/services/docker.nix
    # ../../core/services/flatpak.nix
    ../../core/services/gamemode.nix
    # ../../core/services/gnome-keyring.nix
    ../../core/services/libinput.nix
    # ../../core/services/tlp.nix
		## Style
    ../../core/style/fonts.nix
    # ../../core/style/prefer-dark.nix
		## User
    ../../core/user/edu.nix
		## Virt
		# ../../core/virt/qemu.nix
  ];
}
