# Dot-files
DOTFILES=`pwd`

echo Copying dotfiles...
for f in \
         gitconfig         \
         global_ignore     \
         npmrc             \
         tmux.conf         \
         tmuxinator        \
         vim               \
         vimperatorrc      \
         vimrc             \
         zshrc
    do
        rm -rf ~/.$f
        ln -s $DOTFILES/$f ~/.$f
    done

# Konsole
echo Copying Konsole files...
for f in ./config/gvs-konsole.profile ./config/color-konsole.colorscheme
do
    base=`basename $f`
    rm ~/.kde/share/apps/konsole/$base
    ln -s $DOTFILES/config/$base ~/.kde/share/apps/konsole/
done

echo Copying fonts...
rm -rf ~/.fonts
ln -s $DOTFILES/fonts ~/.fonts
fc-cache -f -v

echo Done!
