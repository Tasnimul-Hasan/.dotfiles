#!/bin/sh

cp scripts ~/scripts -r
cat scripts/main.sh > ~/.bashrc
echo >> ~/.bashrc
cat scripts/node.sh >> ~/.bashrc

gh alias set list 'repo list'
gh alias set edit 'repo edit'
gh alias set create 'repo create'
gh alias set delete 'repo delete'
gh alias set rename 'repo rename'
gh alias set archive 'repo archive'
gh alias set fork 'repo fork'
gh alias set view 'repo view -w'
gh alias set sync 'repo sync'
gh alias set public 'repo edit --visibility public'
gh alias set private 'repo edit --visibility private'
