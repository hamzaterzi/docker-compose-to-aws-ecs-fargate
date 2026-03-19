variable "project_name" {
  description = "Project name used for naming and tagging"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for ECS resources"
  type        = string
}

variable "public_subnet_ids" {
  description = "Subnet IDs for ECS service"
  type        = list(string)
}

variable "alb_security_group_id" {
  description = "Security group ID of the ALB"
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN for ECS service"
  type        = string
}

variable "ecs_task_execution_role_arn" {
  description = "Execution role ARN for ECS tasks"
  type        = string
}

variable "container_image" {
  description = "Container image URI"
  type        = string
}

variable "app_port" {
  description = "Application port"
  type        = number
  default     = 3000
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 2
}