resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "HighCPUAlarm"
  comparison_operator = "GreaterThanThreshold" # 70%より大きいときにアラームを鳴らす　9行目に値
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60                     # 60秒ごとに
  statistic           = "Average"              # 平均CPU使用率を監視
  threshold           = 70
  alarm_description   = "EC2 CPU usage too high!"
  treat_missing_data  = "notBreaching"         # データが来ていない期間は、異常ではない
  
  dimensions = {
    InstanceId = aws_instance.public_ec2.id
  }
}
