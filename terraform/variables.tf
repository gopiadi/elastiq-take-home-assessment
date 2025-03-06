variable "aws_region" {
  description = "AWS region where the resources will be deployed"
  type        = string
  default     = "us-west-2"  # You can change this to any region of your choice
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  # Example, add more if needed
}

variable "desired_node_count" {
  description = "The desired number of worker nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "EC2 instance type for EKS nodes"
  type        = string
  default     = "t3.medium"  # You can modify this to a different instance type
}

variable "key_name" {
  description = "Name of the SSH key pair to access the EC2 instances"
  type        = string
  default     = "your-ssh-key"  # Replace with your actual key name
}

