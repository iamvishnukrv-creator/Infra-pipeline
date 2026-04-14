module "Vpc" {
  source        = "../../modules/Vpc"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr   = "10.0.1.0/24"
  subnet_az     = "${var.aws_region}a"          # ap-southeast-1a
  env           = "Qa"
}

module "EC2" {
  source            = "../../modules/EC2"
  ami_id            = "ami-0a1b6a02658659c2a"
  instance_type     = "t3.micro"
  subnet_id         = module.Vpc.subnet_id
  ec2_count         = 1
  env               = "Qa"
}
