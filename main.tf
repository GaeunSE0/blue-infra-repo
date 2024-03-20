module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "BLUE-PRD-EKS-Cluster"
  cluster_version = "1.27"
  vpc_id = "vpc-0ff484ef32a5cded6"

  public_subnets = ["subnet-0b052e305720c754f", "subnet-0609c7fae01465887"]
  private_subnets  = ["subnet-0387e439cd12cbb82", "subnet-0725c4d942f4c1853"]
}