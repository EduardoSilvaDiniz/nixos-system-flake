{
  services.systemd.logind = {
    lidSwitch = "suspend"; # Suspende ao fechar a tampa
    lidSwitchDocked = "ignore"; # Não faz nada se conectado a um dock
    handleSuspendKey = "suspend"; # Suspensão ao pressionar o botão de suspensão
    idleAction = "suspend"; # Suspende o sistema após ocioso
    idleActionSec = "30min"; # Tempo para entrar em suspensão ao ocioso
    suspendThenHibernate = {
      enable = true; # Ativa a suspensão seguida de hibernação
      delay = "6h"; # Tempo que o sistema permanece suspenso antes de hibernar
    };
  };
}

