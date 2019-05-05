docker build . -t mc1

ecs-cli push mc1

cd /etc/apt/apt.conf.d/
echo 'Acquire::http::Proxy "http://PITC-Zscaler-Global-ZEN.proxy.corporate.ge.com:80/";' > 1
apt update && apt install iputils-ping net-tools telnet curl procps vim mlocate -y
