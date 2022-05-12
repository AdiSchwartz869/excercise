variable "region" {
  description = "Name of the region"
  type        = string
  default     = "us-west-2"
}

  # Name of the EKS Cluster.
variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

# Must be in at least two different availability zones
variable "subnet_ids" {
  description = "List of subnet IDs."
  type        = list(string)
}

  # Desired number of worker nodes.
variable "desired_size" {
  description = "Desired number of worker nodes in private subnet"
  type        = number
  default     = 2
}

  # Maximum number of worker nodes.
variable "max_size" {
  description = "Maximum number of worker nodes in private subnet"
  type        = number
  default     = 10
}

  # Minimum number of worker nodes.
variable "min_size" {
  description = "Minimum number of worker nodes in private subnet"
  type        = number
  default     = 2
}

variable "ami_type" {
  description = "Type of Amazon Machine Image (AMI) associated with the EKS Node Group. Defaults to AL2_x86_64. Valid values: AL2_x86_64, AL2_x86_64_GPU."
  type        = string
  default     = "AL2_x86_64"
}

variable "capacity_type" {
  description = "Capacity type of node group : ON_DEMAND or SPOT"
  type        = string
  default     = "ON_DEMAND"
}