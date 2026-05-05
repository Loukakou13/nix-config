{ ... }: {
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;

    settings = {
      General = {
        # Active morderns audio codecs (A2DP, etc.)
        Experimental = true;
        # Enable the connection to multi devices at the same time
        MultiProfile = "multiple";
      };
    };
  };
}
