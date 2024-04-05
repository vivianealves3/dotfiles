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
    caprine-bin
    d-spy
    github-desktop
    gimp
    transmission_4-gtk
    insomnia
    icon-library
    dconf-editor
    thunderbird
    bitwarden-desktop
    fnm

    # tools
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
    gh
    google-chrome

    # gaming
    steam-run
    # fhs envs
    wine
    winetricks
    r2modman
    mangohud
    goverlay
    bottles
    protonup-qt
    chiaki
    lutris
    gamescope
    gamemode

    # fun
    glow
    slides
    yabridge
    yabridgectl
    cider
  ];
}
