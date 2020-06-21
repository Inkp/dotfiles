alias paket="mono .paket/paket.exe"
alias fake="mono packages/FAKE/tools/Fake.exe"
alias todo="topydo columns"
alias todo-keys="open 'https://www.topydo.org/#ColumnShortcuts'"
export AWS_DEFAULT_PROFILE=saml
alias aws_auth="python3 ~/aws_cli_auth/main.py"

set fish_color_valid_path #remove path underlining
set PATH ~/.local/bin/  $PATH
set PATH ~/.poetry/bin/ $PATH
set PATH ~/.cargo/bin   $PATH
set PATH ~/go/bin   $PATH
set PATH ~/flutter/bin $PATH
set -x GOPATH ~/go

status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://raw.githubusercontent.com/jorgebucaran/fisher/master/fisher.fish?nocache --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set nord0 2e3440
set nord1 3b4252
set nord2 434c5e
set nord3 4c566a
set nord4 d8dee9
set nord5 e5e9f0
set nord6 eceff4
set nord7 8fbcbb
set nord8 88c0d0
set nord9 81a1c1
set nord10 5e81ac
set nord11 bf616a
set nord12 d08770
set nord13 ebcb8b
set nord14 a3be8c
set nord15 b48ead

set fish_color_normal $nord4
set fish_color_command $nord9
set fish_color_quote $nord14
set fish_color_redirection $nord9
set fish_color_end $nord6
set fish_color_error $nord11
set fish_color_param $nord4
set fish_color_comment $nord3
set fish_color_match $nord8
set fish_color_search_match --background=$nord2
set fish_color_operator $nord9
set fish_color_escape $nord13
set fish_color_cwd $nord8
set fish_color_autosuggestion $nord3
set fish_color_user $nord4
set fish_color_host $nord9
set fish_color_cancel $nord15
set fish_pager_color_prefix $nord13
set fish_pager_color_completion $nord6
set fish_pager_color_description $nord10
set fish_pager_color_progress $nord12
set fish_pager_color_secondary $nord1
