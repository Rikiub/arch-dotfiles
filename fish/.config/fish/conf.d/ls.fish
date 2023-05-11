function ls -w ls
	if type -f exa
		command exa
	else
		builtin ls
	end
end
