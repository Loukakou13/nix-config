{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/locale.nix
      ../../modules/nix.nix
      ../../modules/boot.nix
      ../../modules/network.nix
      ../../modules/plasma.nix
      ../../modules/fonts.nix
      ../../modules/nvidia-gpu.nix
      ../../modules/audio.nix
    ];

  boot.initrd.luks.devices."luks-fb9f8bcc-99ae-4ec7-ae30-d86a8b79fc35".device = "/dev/disk/by-uuid/fb9f8bcc-99ae-4ec7-ae30-d86a8b79fc35";
  networking.hostName = "main"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.charon = {
    isNormalUser = true;
    description = "Charon";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      discord
      spotify
      obsidian
      anki
    #  thunderbird
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    tree
    kitty
    fastfetch
    proton-vpn
  ];

  programs.steam = {
    enable = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?
}
