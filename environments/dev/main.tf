
module "Vpc" {
  source        = "../../modules/Vpc"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr   = "10.0.1.0/24"
  subnet_az     = "${var.aws_region}a"          # ap-southeast-1a
  env           = "dev"
}

module "EC2" {
  source            = "../../modules/EC2"
  ami_id            = "ami-02671e999eec7752f"
  instance_type     = "t2.micro"
  subnet_id         = module.Vpc.subnet_id
  ec2_count         = 2
  env               = "dev"
}
