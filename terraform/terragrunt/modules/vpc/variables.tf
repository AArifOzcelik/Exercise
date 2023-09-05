variable "env" {
    description = "Environment"
    type = string
}

variable "vpc_cidr_block" {
  description = "CIDR"
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Private subnet tags"
  type        = map(any)
}

variable "public_subnet_tags" {
  description = "Private subnet tags"
  type        = map(any)
}