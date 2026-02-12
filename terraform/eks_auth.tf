module "eks_auth" {
  source  = "terraform-aws-modules/eks/aws//modules/aws-auth"
  version = "~> 20.0"

  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::463470938828:user/Isira"
      username = "admin"
      groups   = ["system:masters"]
    }
  ]

  depends_on = [
    module.eks,
    data.aws_eks_cluster.cluster,
    data.aws_eks_cluster_auth.cluster
  ]
}