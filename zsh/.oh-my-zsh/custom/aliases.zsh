alias gcs="git commit -S"
alias gp="git push"
alias forcebuild="git commit --allow-empty -m 'triggerbuild' && git push"

function htheader() {
  http --follow -h --all "$@" Fastly-Debug:1
}
