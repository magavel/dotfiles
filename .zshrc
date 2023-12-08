eval "$(sheldon source)"

HISTSIZE=10000
SAVEHIST=100000

# zshのkill-whole-line（行全体削除）ではなくbashのbackward-kill-line（カーソルから行頭までを削除）に変更
bindkey '^U' backward-kill-line
