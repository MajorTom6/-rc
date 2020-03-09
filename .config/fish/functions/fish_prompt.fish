function fish_prompt --description 'Write out the prompt'
	if set -l branch_name (command git symbolic-ref HEAD 2>/dev/null | string replace refs/heads/ '')
		set git_info (set_color d8d8d8)"|"
		if command git diff-index --quiet HEAD --
			set git_info $git_info(set_color f7ca88)
		else
			set git_info $git_info(set_color ab4642)
		end
		set git_info $git_info"$branch_name"
	end

	# Disable PWD shortening by default.
	set -q fish_prompt_pwd_dir_length
	or set -lx fish_prompt_pwd_dir_length 0

	printf '%s' (set_color -o d8d8d8) '<'
	printf '%s' (set_color a1b56c) $USER
	printf '%s' (set_color d8d8d8) '@'
	printf '%s' (set_color 7cafc2) (prompt_hostname)
	printf '%s' (set_color d8d8d8) '|'
	printf '%s' (set_color ba8baf) (prompt_pwd)
	printf '%s' $git_info
	printf '%s' (set_color d8d8d8) '>'
end
