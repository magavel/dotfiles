eval "$(sheldon source)"

HISTSIZE=10000
SAVEHIST=100000

# zshのkill-whole-line（行全体削除）ではなくbashのbackward-kill-line（カーソルから行頭までを削除）に変更
bindkey '^U' backward-kill-line

# ❯ echo $WORDCHARS
# *?_-.[]~=/&;!#$%^(){}<>
# ↑デフォルト
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # スラッシュ(/)を単語単位でのカーソル移動に区切り文字として認識させる

# bindkey "^_" undo
# redoはデフォルトでバインドされていないので設定する
# alacrittyからCommand + Shift + Zでエスケープシーケンス（\x1br）を送信してRedoを発火させる
bindkey "^[r" redo

# Homebrewでインストールしたコマンドに付属する補完が効くようにしている
# 参考：https://docs.brew.sh/Shell-Completion
# NOTE: なぜかghはeval "$(gh completion -s zsh)"だと補完が効かない
#       ちなみにdockerはeval "$(docker completion zsh)"でもちゃんと補完効いた
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# gcloud CLIの補完を有効にする
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# fzfの設定
export FZF_DEFAULT_OPTS='--reverse --height 12 --border'