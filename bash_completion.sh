#
# Bash completion script created for getip command
# To be installed in "/usr/share/bash-completion/completions/"

_getip() {
	local prev cur domain cmd_opts
	COMPREPLY=()

	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	domain="public external private local"
	cmd_opts="-r --record -l --list"

	case "${prev}" in
		public|external)
			COMPREPLY=( $(compgen -W "$cmd_opts" -- ${cur}) )
			return 0
			;;
		private|local)
			COMPREPLY=( $(compgen -W "$cmd_opts" -- ${cur}) )
			return 0
			;;
		help)
		;;
		*)
		;;
	esac

	# Options
	if [[ "${cur}" == - ]]; then
		COMPREPLY=( $( compgen -W "-h --" -- ${cur}) )
		return 0
	elif [[ "${cur}" == --* ]]; then
		COMPREPLY=( $( compgen -W "--help --version" -- ${cur}) )
		return 0
	else
		COMPREPLY=( $( compgen -W "${domain} -h -v" -- ${cur}) )
		return 0
	fi
}
complete -F _getip getip
