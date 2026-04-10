# This is a standalone Home Manager config for non-NixOS systems
# You can use it with: home-manager switch --flake .#home
{
  username,
  ...
}:
{
  imports = [
    ./modules/neovim.nix
    ./modules/devenv.nix
    ./modules/ghostty.nix
    ./modules/tmux.nix
  ];

  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
