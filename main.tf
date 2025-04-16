module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2_instance" {
  source         = "./modules/ec2_instance"
  subnet_id      = [module.vpc.subnet_id]
  sg_id          = [module.sg.sg_id]
  key_name       = var.key_name
  instance_type  = var.instance_type
  ami_id         = var.ami
}

module "tf_state" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
}