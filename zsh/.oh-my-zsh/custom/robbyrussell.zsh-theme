local ret_status="%(?:%{$fg_bold[green]%}# :%{$fg_bold[red]%}# )"
PROMPT='${ret_status}%{$fg[cyan]%}%n(%l,%j)@%m/%~ %* %{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}➜  $(prompt_end)${ret_status}${reset_color}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

prompt_end() {
  print -n "\n%{%f%}"
}
