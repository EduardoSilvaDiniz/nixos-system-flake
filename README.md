> [!WARNING]
> Este flake está em desenvolvimento contínuo, então espere alterações recorrentes

# O que é Nixos ??

é uma distro linux declarativa, possui sua propria linguagem de programação (Nix).
por ser declarativa, toda a configuração do sistema é colocado em um arquivo .nix, para facilitar
eu desenvolvir este flake para modularizar cada componente do sistema.

## estrutura

- [System](https://github.com/EduardoSilvaDiniz/nixos-system-flake/tree/main/system) configurações para o sistema e de cada host
- [Home](https://github.com/EduardoSilvaDiniz/nixos-system-flake/tree/main/home) configurações para as ferramentas do usuario

## principais ferrramentas

|           | Wayland                                                            |
| --------- | ------------------------------------------------------------------ |
| Shell:    | zsh + OyMyZsh                                                      |
| DE:       | Gnome                                                              |
| Editor:   | [neovim](https://github.com/EduardoSilvaDiniz/neovim-from-scratch) |
| Terminal: | Kitty                                                              |
| Browser:  | Microsoft Edge                                                     |
