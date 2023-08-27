module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-024e6efaf93d85776"
  instance_type          = "t2.micro"
  key_name               = "k8s"
  monitoring             = true
  vpc_security_group_ids = ["sg-02d0cc75b95fd6060"]
  subnet_id              = "subnet-0c9488c596b14e910"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
