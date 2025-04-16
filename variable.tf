variable "aws_region" {
    type = string
    description = "AWS region for all resources."
    default = "us-east-1"
}
variable "key_name" {
    type = string
    description = "Key name for the EC2 instance"
    default = "GitHub-EC2-Key"
}
variable "instance_type" {
    type = string
    description = "EC2 instance type"
    default = "t2.micro"
}
variable "ami_id" {
    type = string
    description = "AMI ID for the EC2 instance"
}
variable "bucket_name" {
    type = string
    description = "S3 bucket name for the EC2 instance"
    default = null
}
variable "aws_access_key" {
    type = string
    description = "AWS access key for the EC2 instance"
    default = null
}
variable "aws_secret_key" {
    type = string
    description = "AWS secret key for the EC2 instance"
    default = null
}

