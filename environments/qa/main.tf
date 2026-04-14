module "Vpc" {
  source        = "../../modules/Vpc"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr   = "10.0.1.0/24"
  subnet_az     = "${var.aws_region}a"          # ap-southeast-1a
  env           = "Qa"
}

module "EC2" {
  source            = "../../modules/EC2"
  ami_id            = "ami-03c3282f979a6a9b0"
  instance_type     = "t3.micro"
  subnet_id         = module.Vpc.subnet_id
  ec2_count         = 2
  env               = "Qa"
}
