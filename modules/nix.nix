{ ... }: {
  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Enable garbage collector to remove unused packages
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };

  # Optimising the space on the disk used by nixstore
  nix.optimise = {
    automatic = true;
    dates = [ "weekly" ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
