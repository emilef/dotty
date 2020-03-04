# ~/.bash_profile: executed by the command interpreter for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# Add ~/bin to $PATH
export PATH="$HOME/bin:$PATH";

# Include user bin to Path
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"


# if running bash
if [ -n "$BASH_VERSION" ]; then
  [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

##############################
##### CORE SHELL OPTIONS #####
##############################
## http://wiki.bash-hackers.org/internals/shell_options
shopt -s cdspell
shopt -s dirspell
shopt -s histappend
shopt -s checkwinsize
shopt -s lithist
shopt -s autocd
shopt -s extglob
shopt -s dotglob
shopt -s globstar
shopt -s nocaseglob        # case insensitive globbing

# Start Loading External dotfiles
# ~/.path can be used to extend PATH
# ~/.extra can be used for settings you dont want to commit
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


##########################
##### TAB COMPLETION #####
##########################
# Add tab completion for many Bash commands 
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then 	
	# Ensure existing Homebrew v1 completions continue to work 	
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh"; 
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion; 
fi;

# Enable tab completion for `g` by marking it as an alias for `git` 
if type _git &> /dev/null; then
 	complete -o default -o nospace -F _git g; 
fi;  

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards 
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;  

# Add tab completion for `defaults read|write NSGlobalDomain` 
# You could just use `-g` instead, but I like being explicit 
complete -W "NSGlobalDomain" defaults;

############################
######### STYLE ############
############################

# Power Pure Line
source ~/gh/pureline/pureline ~/.pureline.conf

# Dir Colours
#if [[ -r ~/.dircolors ]]; then 
#	DIRCOL=~/.dircolors
#	eval "$(dircolors -b DIRCOL)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# fix tput xterm-256-colors
TERM="xterm"
export TERM

###################################
######## WELCOME SCREEN ###########
###################################
clear
figlet -f small Pyromaniac
echo
