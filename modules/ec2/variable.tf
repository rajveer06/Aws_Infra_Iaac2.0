variable "subnet_id" {
    type = list
    description = "List of subnet IDs to associate with the security group"
}
variable "sg_id" {
    type = list
    description = "List of security group IDs to associate with the security group"
}
variable "ami_id" {
    type = string
    description = "AMI ID for the EC2 instance"
}
variable "instance_type" {
    type = string
    description = "Instance type for the EC2 instance"
}
variable "key_name" {
    type = string
    description = "Key pair name for SSH access"
}
