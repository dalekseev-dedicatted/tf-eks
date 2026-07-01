variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "tf-eks"
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.34"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ecr_repository_name" {
  description = "Name for the ECR repository"
  type        = string
  default     = "my-app-repo"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = { Terraform = "true", Environment = "dev" }
}
