if status is-interactive
	# Commands to run in interactive sessions can go here
  function starship_transient_prompt_func
    starship module character 
  end
  starship init fish | source
  enable_transience

	alias ls='eza --no-quotes --icons -l -F -h --group-directories-first --git'
  alias tree='ls --tree --git-ignore'
	alias rainbowfetch='neofetch | lolcat'
	alias mv="mv -i"
  alias man="batman"

	test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

end
