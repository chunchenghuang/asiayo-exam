resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_role.arn
  version  = var.kubernetes_version

  vpc_config {
    cluster_security_group_id      = aws_security_group.eks_cluster_sg.id
    subnet_ids = var.create_vpc ? data.aws_subnets.selected.ids : var.subnet_ids
    endpoint_public_access = false
    endpoint_private_access = true
  }
}

resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.node_role.arn
  subnet_ids      = var.subnet_ids

  scaling_config {  
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }
}
