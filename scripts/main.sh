__bash_prompt() {
  local gitbranch='`\
      if [ "$(git config --get codespaces-theme.hide-status 2>/dev/null)" != 1 ]; then \
          export BRANCH=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null); \
          if [ "${BRANCH}" != "" ]; then \
              echo -n "\[\033[0;36m\](\[\033[1;31m\]${BRANCH}" \
              && if git ls-files --error-unmatch -m --directory --no-empty-directory -o --exclude-standard ":/*" > /dev/null 2>&1; then \
                      echo -n " \[\033[1;33m\]✗"; \
              fi \
              && echo -n "\[\033[0;36m\]) "; \
          fi; \
      fi`'
  local magenta='\e[35m'
  local lightblue='\[\033[1;34m\]'
  local resetcolor='\e[0m'
  PS1="${magenta}➜ ${lightblue}\w ${gitbranch}\n${magenta}$ ${resetcolor}"
  unset -f __bash_prompt
}
__bash_prompt

alias y="yarn"
alias ni="touch"
alias md="mkdir"
alias cls="clear"
alias ghc="gh repo clone"

ghp() {
  local msg="$1"
  if [ -z "$msg" ]; then
    read -p '#: ' inputMsg

    if [ -z "$inputMsg" ]; then
      msg="..."
    else
      msg=$inputMsg
    fi
  fi  
  git add .
  git commit -m "$msg"
  git push
}
