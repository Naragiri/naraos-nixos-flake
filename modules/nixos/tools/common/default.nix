{ lib, config, pkgs, ... }:
with lib;
with lib.nos;
let cfg = config.nos.tools.common;
in {
  options.nos.tools.common.enable = mkEnableOption "Enable common tools.";

  config = mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      btop
      gptfdisk
      killall
      man
      rar
      rsync
      tldr
      wget
      zip
    ];
  };
}