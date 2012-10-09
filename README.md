git clone https://github.com/niquola/myvim.git ~/.vim/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mv ~/.vimrc ~/.vimrc.back
echo 'source ~/.vim/.vimrc' > ~/.vimrc
#inside vim :BundleInstall 
