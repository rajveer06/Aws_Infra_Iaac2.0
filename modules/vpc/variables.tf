variable "vpc_cidr" {
    default = "10.0.0.0/16"
    type = string
    description = "VPC CIDR Block"
}
variable "subnet_cidr" {
    default = "10.0.1.0/24"
    type = string
    description = "Subnet CIDR Block"
}
variable "availability_zone" {
    default = ["us-west-2a"]
    type = string
    description = "Availability Zone for the subnet"
}
