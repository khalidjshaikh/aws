# AWS
docker build . -t mc1

ecs-cli push mc1

cd /etc/apt/apt.conf.d/
apt update && apt install iputils-ping net-tools telnet curl procps vim mlocate -y
