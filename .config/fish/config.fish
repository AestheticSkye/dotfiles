if status is-interactive
	# Commands to run in interactive sessions can go here

	starship init fish | source

	alias ls='eza --no-quotes --icons -l -F -h --group-directories-first --git'
  alias tree='ls --tree --git-ignore'
	alias rainbowfetch='neofetch | lolcat'
	alias mv="mv -i"

	test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

end
