{ lib, config, pkgs, ... }: {
  home.file.".config/nvim" = {
    source = ../../dotfiles/nvim;
    recursive = true;
  };
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      SchemaStore-nvim
      autosave-nvim
      catppuccin-nvim
      cmp-buffer
      cmp-git
      cmp-nvim-lsp
      cmp-nvim-lsp-signature-help
      cmp-nvim-lua
      cmp-path
      cmp_luasnip
      comment-nvim
      diffview-nvim
      efmls-configs-nvim
      fidget-nvim
      flash-nvim
      gitsigns-nvim
      gruvbox-nvim
      harpoon2
      image-nvim
      indent-blankline-nvim
      lspkind-nvim
      lualine-nvim
      luasnip
      markdown-preview-nvim
      molten-nvim
      neogit
      nui-nvim
      nvim-autopairs
      nvim-cmp
      nvim-lspconfig
      nvim-treesitter-context
      nvim-treesitter-textobjects
      nvim-treesitter.withAllGrammars
      nvim-ts-autotag
      nvim-web-devicons
      oil-nvim
      plenary-nvim
      rustaceanvim
      sg-nvim
      sniprun
      telescope-live-grep-args-nvim
      telescope-nvim
      tint-nvim
      tmux-nvim
      trouble-nvim
      undotree
      vim-be-good
      vim-dadbod
      vim-dadbod-completion
      vim-dadbod-ui
      vim-fugitive
      vim-indent-object
      vim-matchup
      vim-rhubarb
      vim-sleuth
      vim-surround
      which-key-nvim
      wilder-nvim
      zk-nvim
    ];

    extraPackages = with pkgs;
      [
        alejandra
        ast-grep
        black
        cargo
        dockerfile-language-server-nodejs
        efm-langserver
        fd
        gcc
        haskellPackages.haskell-language-server
        imagemagick
        isort
        libclang
        ltex-ls
        lua-language-server
        nil
        nixfmt
        nodePackages.pyright
        nodePackages.sql-formatter
        nodePackages.typescript-language-server
        nodejs
        ocamlPackages.ocaml-lsp
        postgresql
        prettierd
        ripgrep
        rust-analyzer
        shellcheck
        shfmt
        src-cli
        stylua
        tailwindcss-language-server
        terraform-ls
        vscode-langservers-extracted
        xsel
        yaml-language-server
        zk
      ];
    extraLuaPackages = ps: with ps; [
    ];

    extraPython3Packages = pyPkgs:
      with pyPkgs; [
      ];
  };
}
