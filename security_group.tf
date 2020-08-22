# セキュリティグループの定義(パブリックサブネット1a)
resource "aws_security_group" "tfWebSg" {
  description = "tfWebSg"
  vpc_id      = aws_vpc.tfVPC.id

  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
      Name = "tfWebSg"
  }
}

resource "aws_security_group_rule" "allow_ssh" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.tfWebSg.id
}

resource "aws_security_group_rule" "allow_web" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.tfWebSg.id
}

resource "aws_security_group_rule" "allow_web_v6" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  ipv6_cidr_blocks = ["::/0"]
  security_group_id = aws_security_group.tfWebSg.id
}