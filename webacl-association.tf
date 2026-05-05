resource "aws_wafv2_web_acl_association" "app_waf_alb" {
  resource_arn = aws_lb.app_lb.arn
  web_acl_arn  = aws_wafv2_web_acl.app_waf.arn
}
