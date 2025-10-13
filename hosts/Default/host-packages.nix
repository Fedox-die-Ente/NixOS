{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    protonvpn-gui # VPN
    github-desktop
    jetbrains-toolbox
    jetbrains.idea-ultimate
    nodejs_22
    # pokego # Overlayed
  ];
}
