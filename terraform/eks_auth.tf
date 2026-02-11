module "eks_auth" {
  source  = "terraform-aws-modules/eks/aws//modules/aws-auth"
  version = "~> 20.0"

  manage_aws_auth = true

  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::463470938828:user/Isira"
      username = "admin"
      groups   = ["system:masters"]
    }
  ]

  depends_on = [module.eks]
}