export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

export LC_ALL="en_AU.UTF-8"
export LANG="en_AU.UTF-8"

# Larger bash history (allow 2^17 entries; default is 500)
export HISTSIZE=131072;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export PROMPT_COMMAND='history -a';

# Highlight section titles in manual pages
# https://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X";


# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
# * Case-insensitive globbing (used in pathname expansion)
for option in autocd globstar nocaseglob histappend cdspell; do
   shopt -s "$option" 2> /dev/null;
done;

# Bind history search to up and down arrows
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Case-insensitive tab completion
bind "set completion-ignore-case on"

# Print options if ambigious, prevents having to tab twice
bind "set show-all-if-ambiguous on"


# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh rsync;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal" killall;

function color_my_prompt {
    local __cur_location="\[\033[01;34m\]\W"
    local __git_branch_color="\[\033[31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt
