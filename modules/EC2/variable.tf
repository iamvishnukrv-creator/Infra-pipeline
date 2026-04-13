variable "ami_id" {
  type        = string
  description = "ami_id of EC2"
}

variable "instance_type" {
  type        = string
  description = "Instance type of my EC2"
}

variable "subnet_id" {
  type        = string
  description = "subnet_id of my EC2"
}

variable "EC2_count" {
  type        = string
  description = "No of EC2 to be created"
}

variable "env" {
  type        = string
  description = "what env we are creating"
}