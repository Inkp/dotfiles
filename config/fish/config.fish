alias paket="mono .paket/paket.exe"
alias fake="mono packages/FAKE/tools/Fake.exe"
alias todo="topydo columns"
alias todo-keys="open 'https://www.topydo.org/#ColumnShortcuts'"

set PATH ~/.local/bin/  $PATH
set PATH ~/.poetry/bin/ $PATH
set PATH ~/.cargo/bin   $PATH
set PATH ~/go/bin   $PATH
set GOPATH ~/go

pyenv init - | source

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
