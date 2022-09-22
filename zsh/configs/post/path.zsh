# Try loading ASDF from the regular home dir location
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
elif which brew >/dev/null &&
  BREW_DIR="$(dirname `which brew`)/.." &&
  [ -f "$BREW_DIR/opt/asdf/asdf.sh" ]; then
  . "$BREW_DIR/opt/asdf/asdf.sh"
elif [ -f /opt/asdf-vm/asdf.sh ]; then
 . /opt/asdf-vm/asdf.sh
fi

export GOPATH="$HOME/code/go"
PATH="$GOPATH/bin:$PATH"

# adds gnu-sed from brew path in front
if [ "$(uname)" = 'Darwin' ]; then
    PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
fi

# $HOME/emacs.d/bin needed by Doom Emacs
PATH="$HOME/.bin:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
