alias gcs="git commit -S"
alias gp="git push"
alias forcebuild="git commit --allow-empty -m 'triggerbuild' && git push"
alias gow="git commit --amend -a --no-edit"

alias yeet="git push"

function htheader() {
  http --follow -h --all "$@" Fastly-Debug:1
}

alias aww="aws2-wrap --profile "

function awwt() {
  profile="${1}"
  shift
  aww ${profile} terraform ${@}
}

alias export_npm_token="export NPM_TOKEN=\"$(cat ~/.npmrc | cut -d '=' -f2)\""
