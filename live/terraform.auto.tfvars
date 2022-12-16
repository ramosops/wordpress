region      = "us-east-2"
service     = "teste"
environment = "wp"
company     = "dr"
#################################################################################################################################

# VPC
vpc_cidr        = "172.19.0.0/16"
public_subnets  = ["172.19.51.0/24", "172.19.52.0/24"]
private_subnets = ["172.19.1.0/24", "172.19.2.0/24"]
azs             = ["us-east-2a", "us-east-2b"]
single_natgw    = true
#################################################################################################################################

#ECS
instance_type = "t3.medium"
clustername   = "ecs-cluster"
desired_ecs   = 2
min_ecs       = 2
max_ecs       = 2
#################################################################################################################################

#RDS
database_name      = "wpdb"
master_username    = "admin"
cluster_identifier = "wordpress-cluster"
engine             = "aurora-mysql"
engine_version     = "5.7.mysql_aurora.2.08.3"
engine_mode        = "serverless"

#################################################################################################################################

#CERTIFICATE
zone_domain = "clusterpoc.com"
zone_id     = "Z01416496WBJQTWRE1KT"