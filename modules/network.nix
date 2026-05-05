{ ... }: {
  # Enable networking
  networking.networkmanager.enable = true;

  # Config some custom hostanme resolution
  networking.hosts = {
    "192.168.1.201" = ["homarr.loukawai.fr" "jellyfin.loukawai.fr" "sonarr.loukawai.fr" "radarr.loukawai.fr" "prowlarr.loukawai.fr" "qbittorrent.loukawai.fr"];
    "192.168.1.202" = ["argocd.loukawai.fr" "longhorn.loukawai.fr" "vault.loukawai.fr" "prometheus.loukawai.fr" "grafana.loukawai.fr"];
  };
}
