resource "aws_instance" "devops" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.medium"
  key_name      = "mykey"

  root_block_device {
    volume_size = 50
    volume_type = "gp3"
  }

  tags = {
    Name = "Single-EC2-DevOps"
  }
}
