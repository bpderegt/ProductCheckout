curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. ~/.nvm/nvm.sh

nvm install node

sudo yum update -y

sudo yum install git -y

node -e "console.log('Running Node.js ' + process.version)"

git version

git clone https://github.com/5-Stars-HR/BrianSlimServer.git

echo copy to here, login, copy the rest

cd BrianSlimServer

npm install

npm start

git config --global credential.helper
git config --global user.name "bpderegt"
git config --global user.email "brian.deregt@gmail.com"
git config --global user.password "balboa2020"
git config --global credential.helper

cd BrianSlimServer

git pull origin master

npm start


lsof -i:8673

kill -9

npm start
