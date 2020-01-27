set PATH /bin /home/tom/.cargo/bin /sbin /usr/bin /usr/games /usr/local/bin /usr/local/games /usr/local/sbin /usr/sbin /home/tom/bin

function fish_user_key_bindings
	for mode in insert default visual
		bind -M $mode \cf forward-char
	end
end
