resource "aws_security_group" "public_sg" {
  name        = "public-sg"
  vpc_id      = aws_vpc.aws_study_task17_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # SSH許可
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # HTTP許可
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "aws-study-task17-public-sg"
  }
}
resource "aws_security_group" "rds_sg" {
  vpc_id = aws_vpc.aws_study_task17_vpc.id
  name   = "rds-sg"

  # EC2からのアクセスを許可
  ingress {
    from_port                = 3306
    to_port                  = 3306
    protocol                 = "tcp"
    security_groups          = [aws_security_group.public_sg.id] # EC2 SGからのみ許可
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "aws-study-task17-rds-sg" }
}
