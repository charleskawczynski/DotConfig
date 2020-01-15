SYMLINKS := ~/.bash_profile ~/.vimrc ~/.gitconfig ~/.tmux.conf

REPLACE = -i

symlinks: ${SYMLINKS}

# get rid of all symlinks into ~/etc
cleanall:
	find ~ -maxdepth 1 -lname '${CURDIR}/*' | xargs -t rm

# get rid of broken symlinks into ~/etc
clean:
	find ~ -maxdepth 1 -lname '${CURDIR}/*' -exec test "!" -e {} \; -print | xargs -t rm


~/.bash_profile : shell/profile.sh
~/.vimrc : vim/vimrc
~/.gitconfig : git/config
~/.tmux.conf : tmux/tmux.conf

${SYMLINKS} :
	ln ${REPLACE} -s ${CURDIR}/$< $@

.PHONY: symlinks clean cleanall
