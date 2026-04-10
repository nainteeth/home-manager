{
  ...
}:
{
  programs.ghostty = {
    enable = false;
    package = null; # dont install via nix
  };

  xdg.configFile."ghostty" = {
    source = ../dotfiles/ghostty;
    recursive = true;
  };
}
