resource "aws_security_group" "ec2sg" {
  name        = "ec2sg"
  description = "Allow public inbound traffic"
  vpc_id      = aws_vpc.this.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.cammon_tags, { Name = "ec2sg" })
}

#aws_security_group: criação das regras acesso na porta 88 e 22.
#ingress porta 80: acesso liberado HTTP.
#ingress porta 22: acesso liberado SSH.
