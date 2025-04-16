variable "subnet_id" {
    type = list
    description = "List of subnet IDs to associate with the security group"
}
variable "sg_id" {
    type = list
    description = "List of security group IDs to associate with the security group"
}
variable "ami" {
    type = string
    description = "AMI ID for the EC2 instance"
}
variable "instance_type" {
    type = string
    description = "EC2 instance type"
    default = "t2.micro"
}
variable "key_name" {
    type = string
    description = "Key pair name for SSH access"
}
variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}