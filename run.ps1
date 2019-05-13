$name = 'cluster'

# if($env:http_proxy) { remove-item Env:http_proxy }
# if($env:https_proxy) { remove-item Env:https_proxy }

ecs-cli up --capability-iam --size 1 --instance-type t3.micro --keypair Dell --cluster $name
sleep 30

for($i=1; $i -le 5; $i++) {
    ecs-cli compose --project-name mc$i --file mc$i.yml up --cluster $name
}
# ecs-cli compose up --cluster $name
