{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    protonvpn-gui # VPN
    github-desktop
    jetbrains-toolbox
    jetbrains.idea-ultimate
    # pokego # Overlayed
  ];
}
