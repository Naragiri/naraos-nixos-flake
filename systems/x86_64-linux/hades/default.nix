{... }:

{
  imports = [ ./hardware-configuration.nix ];

  nos = { 
    apps = {
      editor.vscode.enable = true;
      media.spotify.enable = true;
      misc.neofetch.enable = true;
      games = {
        minecraft.enable = true;
        steam = {
          enable = true;
          consoleSession.enable = true;
        };
        common.launchers.enable = true;
      };
      social.discord.enable = true;
      tools = {
        common.enable = true;
        nix-ld.enable = true;
        git.enable = true;
      };
      web.librewolf.enable = true;
      web.vivaldi.enable = true;
    };
    desktop.plasma5.enable = true;
    system = {
      hardware = {
        audio.enable = true;
        bluetooth.enable = true;
        gpu.amd.enable = true;
        network.enable = true;
      };
      boot.grub.enable = true;
      security.doas.enable = true;
      service.flatpak.enable = true;
    };
  };

  services.openssh.enable = true;
  # networking.firewall.allowedTCPPorts = [ 22 ];
  networking.firewall.enable = true;

  system.stateVersion = "23.11";
}
