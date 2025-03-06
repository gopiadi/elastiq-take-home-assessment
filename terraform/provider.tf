provider "aws" {
  region  = "us-west-2"
  profile = "your-aws-profile"
}

resource "aws_eks_cluster" "opensearch_cluster" {
  name     = "opensearch-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = aws_subnet.subnet_ids[*]
  }

  depends_on = [aws_iam_role_policy_attachment.eks_cluster_policy]
}

resource "aws_eks_node_group" "opensearch_nodes" {
  cluster_name    = aws_eks_cluster.opensearch_cluster.name
  node_group_name = "opensearch-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = aws_subnet.subnet_ids[*]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  depends_on = [aws_eks_cluster.opensearch_cluster]
}

