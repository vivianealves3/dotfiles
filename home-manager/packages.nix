{pkgs, ...}: {
  imports = [
    ./scripts/blocks.nix
    ./scripts/nx-switch.nix
    ./scripts/vault.nix
  ];

  xdg.desktopEntries = {
    "lf" = {
      name = "lf";
      noDisplay = true;
    };
  };

  home.packages = with pkgs;
  with gnome; [
    # gui
    obsidian
    (mpv.override {scripts = [mpvScripts.mpris];})
    libreoffice
    spotify
    caprine-bin
    d-spy
    github-desktop
    gimp
    transmission_4-gtk
    discord
    teams-for-linux
    icon-library
    dconf-editor
    gnome-secrets
    thunderbird
    bitwarden-desktop
    protonup-qt

    # tools
    # steam-run # fhs envs
    bat
    eza
    fd
    ripgrep
    fzf
    libnotify
    killall
    zip
    unzip
    glib
    mongodb-compass
    bottles
    gh
    r2modman
    mangohud
    goverlay
    rustdesk

    # fun
    glow
    slides
    yabridge
    yabridgectl
    wine-staging
    lutris
    cider
  ];
}
