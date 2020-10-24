#
# WSL Workarounds
#

if [[ -f /proc/version ]] && grep --quiet Microsoft /proc/version; then

	# Set correct umask
	# Microsoft/BashOnWindows#352
	[[ "$(umask)" == '000' ]] && umask 022

	# Prevent ZSH from changing the priority of the background processes with nice.
	# Microsoft/BashOnWindows#1887
	unsetopt BG_NICE

	# SSH Agent WSL
	# https://github.com/rupor-github/ssh-agent-wsl
	killall ssh-agent
	eval $(/mnt/c/Windows/ssh-agent-wsl/ssh-agent-wsl -rq)

fi
