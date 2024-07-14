{
  pkgs,
  ...
}: {
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline vim-surround coc-nvim nvim-treesitter ];
    settings = { ignorecase = true; };
  };
}
