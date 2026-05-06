{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    tree
    kitty
    fastfetch
    proton-vpn
    gcc
  ];
}
