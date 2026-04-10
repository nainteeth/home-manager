{
  pkgs,
  ...
}:
{
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      catppuccin
      yank
      resurrect
      continuum
    ];
  };

  xdg.configFile."tmux" = {
    source = ../dotfiles/tmux;
    recursive = true;
  };
}
