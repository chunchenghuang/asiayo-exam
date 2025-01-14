variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "create_vpc" {
  type    = bool
  default = true 
}

variable "vpc_cidr" { 
   default = "10.0.0.0/16"
   description = "vpc cidr block"
}

variable "vpc_id" {
  type        = string
  description = "Existing VPC ID"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of Subnet IDs"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS Cluster"
  default     = "eks-cluster"
}

variable "node_group_name" {
  type        = string
  description = "Name of the EKS Node Group"
  default     = "eks-node-group"
}

variable "node_instance_type" {
  type        = string
  description = "Instance type for EKS nodes"
  default     = "t3.medium"
}

variable "desired_capacity" {
  type        = number
  description = "Desired number of nodes"
  default     = 2
}

variable "min_size" {
  type        = number
  description = "Minimum number of nodes"
  default     = 1
}

variable "max_size" {
  type        = number
  description = "Maximum number of nodes"
  default     = 5
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.26"
}