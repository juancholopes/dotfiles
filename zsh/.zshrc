# ===== CONFIGURACIONES ADICIONALES =====
# Estrategia de autosugerencia (opcional)
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ===== TU CONFIGURACIÓN ACTUALIZADA =====
export PATH="$HOME/.volta/bin:$HOME/.cargo/bin:$PATH"
if [[ $- == *i* ]]; then
    # Commands to run in interactive sessions can go here
fi
eval "$(dircolors -b)"
alias ls='ls --color=auto'

# Cargar plugins de zsh
# zstyle ':autocomplete:*' delay 0.4          # retardo de 0.4s
# zstyle ':autocomplete:*' min-input 2        # mínimo 2 caracteres
# # zstyle ':autocomplete:*' ignored-input '..##' # ignorar cuando escribes '..'

source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ===== CONFIGURAR AUTOSUGERENCIAS AQUÍ =====
# Añadir DESPUÉS de cargar zsh-autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#727169'

export PROJECT_PATHS="/home/juancho/Developer/"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_DEFAULT_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exlude .git"

# WM_VAR="/$ZELLIJ"
# # change with ZELLIJ
# WM_CMD="zellij"
# # change with zellij

# Función para iniciar el WM si es necesari
function start_if_needed() {
    if [[ $- == *i* ]] && [[ -z "${WM_VAR#/}" ]] && [[ -t 1 ]]; then
        exec $WM_CMD
    fi
}

# alias
alias fzfbat='fzf --preview="bat --theme=gruvbox-dark --color=always {}"'
alias fzfnvim='nvim $(fzf --preview="bat --theme=gruvbox-dark --color=always {}")'
alias nv=nvim

#plugins
plugins=(
  command-not-found
)


autoload -Uz compinit
compinit

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
eval "$(starship init zsh)"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
start_if_needed

#Alias
alias conserve-on='echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/*/conservation_mode'
alias conserve-off='echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/*/conservation_mode'
alias conserve-status='cat /sys/bus/platform/drivers/ideapad_acpi/*/conservation_mode'
alias lz=lazygit

function zs() {
  z "$@" ; ls 
}

export PATH="/home/juancho/.local/bin:$PATH"
export PATH=/home/juancho/.opencode/bin:$PATH
export PATH="$HOME/.opencode/bin:$PATH"


[ -s "/home/juancho/.bun/_bun" ] && source "/home/juancho/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Mode VIM 
bindkey -v

# Ignore comments
setopt INTERACTIVE_COMMENTS
# SSH Agent via systemd
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export PATH="$HOME/.local/bin:$PATH"


