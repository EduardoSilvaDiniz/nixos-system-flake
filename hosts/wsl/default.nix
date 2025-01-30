{
  pkgs,
  pkgs-unstable,
  ...
}: {
  wsl.enable = true;
  wsl.defaultUser = "nixos";
  networking.hostName = "wsl";
  nix.settings.experimental-features = ["nix-command" "flakes"];
  system.stateVersion = "24.11";
  environment.systemPackages =
    (with pkgs; [
      git
      go
      gore # Go
      gopls # LSP
      delve # DAP
      gotests # Test
      ### Formats
      gofumpt # Enforce a stricter format than gofmt, while being backwards compatible.
      golines # long lines
      gotools # adds several tools (goimports)
      goimports-reviser
      golangci-lint # diagnostics
      gomodifytags # code actions
      lua-language-server # LSP
      stylua # format
      nil # LSP
      alejandra # format
      deadnix # diagnostics
      statix # code action
      vimPlugins.nvim-treesitter.withAllGrammars
      uncrustify
      chafa
      ueberzugpp
      sqlite
      tree-sitter
      lazygit
      hpx
      neovim-unwrapped
    ])
    ++ (with pkgs.lua51Packages; [
      lua
      luarocks
    ]);
}
