cp ../.vimrc ./

echo "### linlin-vim-setting\n"
cat .vimrc > README.md

git add -A
git commit -m 'update vimrc'
git push origin master

