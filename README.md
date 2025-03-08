> [!WARNING]
> Este flake está em desenvolvimento contínuo, então espere alterações recorrentes

# O que é Nixos ??

é uma distro linux declarativa, possui sua propria linguagem de programação (Nix).
por ser declarativa, toda a configuração do sistema é colocado em um arquivo .nix, para facilitar
eu desenvolvir este flake para modularizar cada componente do sistema.

## estrutura

- hosts configuração individual para dispositivos
  - nagakiba laptop idepad
  - zweihander desktop pessoal
  - common são modulos para os hosts
- home modulos do homeManager
  - desktop configuração para cada aplicativo
  - dev configuração para cada linguagem de programação
  - editores neovim emacs
  - games configuração para Launcheres, emuladores e ferramentas
  - shell shells para o usuario
  - themes
  - virt

## principais ferrramentas

|           | Wayland                                                            |
| --------- | ------------------------------------------------------------------ |
| Shell:    | zsh + oymyzsh                                                      |
| WM:       | swaywm                                                             |
| Editor:   | [neovim](https://github.com/EduardoSilvaDiniz/neovim-from-scratch) |
| Terminal: | foot                                                               |
| Launcher: | rofi                                                               |
| Browser:  | google chrome                                                      |
