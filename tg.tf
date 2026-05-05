resource "aws_lb_target_group" "app_tg" {
 name = "aws-study-task17-tg" 
 port = 80 
 protocol = "HTTP" 
 vpc_id = aws_vpc.aws_study_task17_vpc.id 
 target_type = "instance"   # EC2インスタンス指定
 
health_check {
    path = "/" 
    interval = 30 
    timeout = 5 
    healthy_threshold = 2 
    unhealthy_threshold = 2 
    matcher = "200"

 }
}
