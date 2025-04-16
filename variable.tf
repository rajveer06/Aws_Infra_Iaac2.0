variable "aws_region" {
    type = string
    description = "AWS region for all resources."
}
variable "key_name" {
    type = string
    description = "Key name for the EC2 instance"
}
variable "instance_type" {
    type = string
    description = "EC2 instance type"
}
variable "ami_id" {
    type = string
    description = "AMI ID for the EC2 instance"
    default = null
}
variable "bucket_name" {
    type = string
    description = "S3 bucket name for the EC2 instance"
}
  

