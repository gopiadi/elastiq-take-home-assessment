output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.opensearch_cluster.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = aws_eks_cluster.opensearch_cluster.endpoint
}

output "eks_cluster_security_group_id" {
  description = "The security group ID for the EKS cluster"
  value       = aws_security_group.eks_cluster_sg.id
}

output "eks_node_group_name" {
  description = "The name of the EKS node group"
  value       = aws_eks_node_group.opensearch_nodes.node_group_name
}

output "eks_node_group_role" {
  description = "The IAM role for the EKS node group"
  value       = aws_iam_role.eks_node_role.name
}

