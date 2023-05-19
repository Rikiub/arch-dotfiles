# show directory listing on directory change
function cd --argument dir
	if [$dir = ""]
		builtin cd $HOME
	else
		builtin cd $dir
	end
end
