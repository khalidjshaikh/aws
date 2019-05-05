# ecs-cli up --capability-iam --size 1 --instance-type t3.micro --keypair Dell
for($i=1; $i -le 5; $i++)
{
    ecs-cli compose --project-name mc$i --file mc$i.yml up
}
