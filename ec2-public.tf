# AWS EC2 Instance Terraform Module
module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  # insert the 10 required variables here
  name                   = "${local.name}-public"
  # instance_count         = 2
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  #monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_sg.this_security_group_id]
  user_data = file("${path.module}/script.sh")
  tags = local.common_tags
}

