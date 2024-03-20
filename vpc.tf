#module "vpc" {
#  source ""terraform-aws-modules/vpc/aws"
#    cidr_block = "10.0.0.0/16"
#    tags = {
#      Name = "BLUE-PRD-VPC"
#      enable_nat_gateway   = true
#      enable_dns_hostnames = true
#
#      enable_flow_log                      = true
#      create_flow_log_cloudwatch_iam_role  = true
#      create_flow_log_cloudwatch_log_group = true
#
#      public_subnet_tags = {
#        "kubernetes.io/role/elb" = 1
#        "kubernetes.io/cluster/BLUE-PRD-EKS-CLUSTER" = shared
#        "Name" = "BLUE-PRD-WEB-PUB-2C"
#      }
#
#      private_subnet_tags = {
#        "kubernetes.io/role/internal-elb" = 1
#        "karpenter.sh/discovery"          = "BLUE-PRD-EKS-Cluster"
#        "Name" = "BLUE-PRD-WEB-PUB-2C"
#        "kubernetes.io/cluster/BLUE-PRD-EKS-CLUSTER" = shared
#      }
#    }
#  }
#}
#
##module "vpc" {
##  source  = "terraform-aws-modules/vpc/aws"
##  version = "~>3.12"
##
##  name = local.name
##  cidr = local.vpc_cidr
##
##  azs             = local.azs
##  private_subnets = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 4, k)]
##  public_subnets  = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 48)]
##  intra_subnets   = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 52)]
##
##  enable_nat_gateway   = true
##  enable_dns_hostnames = true
##
##  enable_flow_log                      = true
##  create_flow_log_cloudwatch_iam_role  = true
##  create_flow_log_cloudwatch_log_group = true
##
##  public_subnet_tags = {
##    "kubernetes.io/role/elb" = 1
##    "karpenter.sh/discovery" = local.name
##  }
##
##  private_subnet_tags = {
##    "kubernetes.io/role/internal-elb" = 1
##    "karpenter.sh/discovery"          = local.name
##  }
##
##  tags = local.tags
##}
