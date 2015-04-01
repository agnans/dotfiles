# Dot-files
DOTFILES=`pwd`

echo Copying dotfiles...
for f in $DOTFILES/home/*
    do
        rm -rf ~/.$(basename -s .sh $f)
        ln -s $f ~/.$(basename -s .sh $f)
    done

echo Copying fonts...
rm -rf ~/.fonts
ln -s $DOTFILES/fonts ~/.fonts
fc-cache -f -v

echo Done!
