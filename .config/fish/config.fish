set PATH /bin /sbin /usr/bin /usr/games \
	 /usr/local/bin /usr/local/games \
	 /usr/local/sbin /usr/sbin \
	 /home/tom/bin \
	 /home/tom/.cargo/bin \
	 /home/tom/.local/bin

set GOPATH /home/tom/src/go

function fish_user_key_bindings
	for mode in insert default visual
		bind -M $mode \cf forward-char
	end
end

function fish_mode_prompt
end
