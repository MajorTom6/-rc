function fish_prompt --description 'Write out the prompt'
	if test "$TERM" = "linux"
		set error_color red
		set good_color green
		set path_color yellow
		set user_color green
		set host_color blue
		set white_color white
	else
		set good_color f7ca88
		set error_color ab4642
		set path_color ba8baf
		set user_color a1b56c
		set host_color 7cafc2
		set white_color d8d8d8
	end

	if set -l branch_name (command git symbolic-ref HEAD 2>/dev/null | string replace refs/heads/ '')
		set git_info (set_color $white_color)"|"
		if command git diff-index --quiet HEAD --
			set git_info $git_info(set_color $good_color)
		else
			set git_info $git_info(set_color $error_color)
		end
		set git_info $git_info"$branch_name"
	end

	# Disable PWD shortening by default.
	set -q fish_prompt_pwd_dir_length
	or set -lx fish_prompt_pwd_dir_length 0

	printf '%s' (set_color -o $white_color) '<'
	printf '%s' (set_color $user_color) $USER
	printf '%s' (set_color $white_color) '@'
	printf '%s' (set_color $host_color) (prompt_hostname)
	printf '%s' (set_color $white_color) '|'
	printf '%s' (set_color $path_color) (prompt_pwd)
	printf '%s' $git_info
	printf '%s' (set_color $white_color) '>'
end
