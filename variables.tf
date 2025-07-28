variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in the VPC."
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "Enable DNS support in the VPC."
  default     = true
}

variable "vpc_cidr" {
  type        = string
  description = "The primary CIDR block for the VPC."
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "A list of additional CIDR blocks to associate with the VPC."
  default     = []
}

variable "public_subnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
  description = "A list of public subnets to create, each with a name, CIDR block, and availability zone."
}

variable "private_subnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
  description = "A list of private subnets to create, each with a name, CIDR block, and availability zone."
}

variable "database_subnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
  default     = []
  description = "An optional list of subnets dedicated for databases, each with a name, CIDR block, and availability zone."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to all resources created by this module."
  default     = {}
}
