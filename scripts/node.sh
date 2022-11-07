if [ `nvm current` == system ]; then
  echo 'Installing latest version of NodeJs...'
  rm ~/.nodejs /opt/nodejs -rf
  nvm install --lts
  nvm use --lts
  clear
  
  echo 'Rebuilding ~/.bashrc'
  cat ~/scripts/main.sh > ~/.bashrc
  clear
  
  echo 'Installing global npm packages...'
  npm i -g npm@latest
  npm i -g nodemon live-server gitignore
  clear
fi
