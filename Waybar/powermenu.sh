#!/usr/bin/env bash

opcoes="   Desligar\n   Reiniciar\n   Suspender\n   Sair"

# Estilo visual completo inserido direto no comando do Rofi
escolha=$(echo -e "$opcoes" | rofi -dmenu -i -p "Menu de Energia" \
-theme-str '
  window { 
      width: 100%; 
      height: 100%; 
      background-color: rgba(30, 30, 46, 0.9); /* Fundo escuro semi-transparente */
      children: [ mainbox ];
  }
  mainbox {
      children: [ listview ];
      justify-content: center;
      alignment: center;
      padding: 30% 25%; /* Centraliza o menu no meio da tela */
  }
  listview {
      columns: 4; /* Coloca as 4 opções lado a lado como no KDE */
      lines: 1;
      spacing: 20px;
      background-color: transparent;
  }
  element {
      orientation: vertical;
      padding: 25px;
      background-color: #313244;
      text-color: #cdd6f4;
      border-radius: 12px;
  }
  element selected {
      background-color: #f38ba8; /* Cor de destaque ao selecionar */
      text-color: #11111b;
  }
  element-text {
      horizontal-align: 0.5;
      font: "JetBrainsMono Nerd Font 14";
  }
')

case "$escolha" in
    *Desligar) systemctl poweroff ;;
    *Reiniciar) systemctl reboot ;;
    *Suspender) systemctl suspend ;;
    *Sair) hyprctl dispatch exit || swaymsg exit || killall -9 labwc ;;
esac
