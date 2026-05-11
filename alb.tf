resource "aws_lb" "app_lb" {
  name               = "aws-study-task17-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets = [
    aws_subnet.public_a.id,
    aws_subnet.public_c.id
  ]

  enable_deletion_protection = false

  tags = {
    Name = "aws-study-task17-ALB"
  }
}
