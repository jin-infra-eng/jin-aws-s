resource "aws_lb_target_group_attachment" "app_tg_attachment" { 
    target_group_arn = aws_lb_target_group.app_tg.arn 
    target_id = aws_instance.public_ec2.id 
    port = 80 
}
