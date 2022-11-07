echo 'Installing node...'
rm ~/.nodejs /opt/nodejs -rf
nvm install --lts
nvm use --lts
clear

echo "Installing global npm packages..."
npm i -g npm@latest
npm i -g nodemon live-server gitignore
clear