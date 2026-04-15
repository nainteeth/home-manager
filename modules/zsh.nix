{
  pkgs,
  ...
}:
{
  programs.zsh = {
    enable = true;
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
        file = "share/zsh-autosuggestions/zsh-autosuggestions.zsh";
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
        file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
      {
        name = "zsh-history-substring-search";
        src = pkgs.zsh-history-substring-search;
        file = "share/zsh-history-substring-search/zsh-history-substring-search.zsh";
      }
    ];
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  xdg.configFile."zsh/.zshrc".source = ../dotfiles/zsh/zshrc;
}
