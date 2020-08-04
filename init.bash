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

git pull origin master

npm install

killall

npm start

git config --global credential.helper
git config --global user.name "bpderegt"
git config --global user.email "brian.deregt@gmail.com"
git config --global user.password "balboa2020"
git config --global credential.helper

cd 

cd BrianSlimServer

git pull origin master

npm install

killall node

npm start


 scp -i LegoProduct.pem 5-star/dump/checkout/inventory.bson ec2-user@ec2-100-25-39-56.compute-1.amazonaws.comhome/ec2-user/mongoDump/

 scp -i LegoProduct.pem 5-star/dump/checkout/inventory.metadata.json ec2-user@ec2-100-25-39-56.compute-1.amazonaws.comhome/ec2-user/mongoDump/

 scp -i LegoProduct.pem 5-star/dump/checkout/products.bson ec2-user@ec2-100-25-39-56.compute-1.amazonaws.comhome/ec2-user/mongoDump/

 scp -i LegoProduct.pem 5-star/dump/checkout/products.metadata.json ec2-user@ec2-100-25-39-56.compute-1.amazonaws.comhome/ec2-user/mongoDump/

 scp -i LegoProduct.pem 5-star/dump/checkout/stores.bson ec2-user@ec2-100-25-39-56.compute-1.amazonaws.comhome/ec2-user/mongoDump/

 scp -i LegoProduct.pem 5-star/dump/checkout/stores.metadata.json ec2-user@ec2-100-25-39-56.compute-1.amazonaws.comhome/ec2-user/mongoDump/

    server 54.91.58.236:8673;
    server 54.160.102.253:8673;
    server 54.225.205.69:8673;

    server 34.203.75.193:8673;
    server 100.26.212.82:8673;
    server 54.90.58.250:8673;
    server 34.227.93.109:8673;
    server 54.144.133.186:8673;
    server 35.175.104.150:8673;
    server 54.87.206.69:8673;




# This assumes a fresh Linux host from standard Amazon Linux 2 images.
# Adaptable to Centos/RHEL too.

sudo su

sed -i .orig 's/net\:/net\:\n  maxIncomingConnections: 999999/' /etc/mongod.conf

# Connections are files because in Unix everything is a file.
echo "ec2-user           soft    nofile          9999999" | sudo tee -a /etc/security/limits.conf
echo "ec2-user           hard    nofile          9999999" | sudo tee -a /etc/security/limits.conf
# nproc is really number of threads.
echo "ec2-user           soft    nproc           9999999" | sudo tee -a /etc/security/limits.conf
echo "ec2-user           hard    nproc           9999999" | sudo tee -a /etc/security/limits.conf
# Threads need memory from the stack.
echo "ec2-user           soft    stack           9999999" | sudo tee -a /etc/security/limits.conf
echo "ec2-user           hard    stack           9999999" | sudo tee -a /etc/security/limits.conf

# Threads allocate memory with mmap
echo 9999999 > /proc/sys/vm/max_map_count
# If you want to persist across reboots
echo "vm.max_map_count=9999999" | sudo tee -a /etc/sysctl.conf

# Needed for outgoing connections (on client)
echo 1024 65530 > /proc/sys/net/ipv4/ip_local_port_range
echo "net.ipv4.ip_local_port_range = 1024 65530" | sudo tee -a /etc/sysctl.conf

# Checks EC2 instance type but doesn't do anything about it
curl http://169.254.169.254/latest/meta-data/instance-type