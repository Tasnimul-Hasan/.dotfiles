if [ `nvm current` == system ]; then
  echo 'Installing latest version of NodeJs...'
  rm ~/.nodejs /opt/nodejs -rf
  nvm install --lts
  nvm use --lts
    
  echo 'Rebuilding ~/.bashrc'
  cat ~/scripts/main.sh > ~/.bashrc
  rm ~/scripts -rf
    
  echo 'Installing global npm packages...'
  npm i -g npm@latest
  npm i -g live-server gitignore nodemon
fi