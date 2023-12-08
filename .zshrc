eval "$(sheldon source)"

HISTSIZE=10000
SAVEHIST=100000

# zshのkill-whole-line（行全体削除）ではなくbashのbackward-kill-line（カーソルから行頭までを削除）に変更
bindkey '^U' backward-kill-line

# ❯ echo $WORDCHARS
# *?_-.[]~=/&;!#$%^(){}<>
# ↑デフォルト
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # スラッシュ(/)を単語単位でのカーソル移動に区切り文字として認識させる