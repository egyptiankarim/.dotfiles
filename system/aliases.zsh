# GRC overrides for `ls`
#
# Relies on `brew install coreutils`.

if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

function md ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
