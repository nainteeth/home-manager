# This is a standalone Home Manager config for non-NixOS systems
# You can use it with: home-manager switch --flake .#home
{
  username,
  config,
  ...
}:
{
  imports = [
    ./modules/neovim.nix
    ./modules/devenv.nix
    ./modules/ghostty.nix
    ./modules/zsh.nix
    ./modules/starship.nix
  ];

  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
  targets.genericLinux.enable = true;

  # This is opensuse bug specific to fix missing flatpaks paths
  xdg.systemDirs.data = [
    "/var/lib/flatpak/exports/share"
    "${config.home.homeDirectory}/.local/share/flatpak/exports/share"
  ];
}
