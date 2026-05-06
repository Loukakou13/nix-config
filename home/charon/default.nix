{ pkgs, ... }: {
  home.stateVersion = "25.11";

  home.username = "charon";
  home.homeDirectory = "/home/charon";

  home.packages = with pkgs; [
      kdePackages.kate
      discord
      spotify
      obsidian
      anki
      xclip
      wl-clipboard
      thunderbird
      tmux
  ];
}
