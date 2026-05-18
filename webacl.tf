resource "aws_wafv2_web_acl" "app_waf" {
  name        = "aws-study-task17-waf"
  description = "WAF for ALB"
  scope       = "REGIONAL"


  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    sampled_requests_enabled   = true
    metric_name                = "aws-study-task17-waf"
  }


  rule {
    name     = "AWS-AWSManagedRulesCommonRuleSet"
    priority = 1

    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesCommonRuleSet"
      }
    }




    visibility_config {
      cloudwatch_metrics_enabled = true
      sampled_requests_enabled   = true
      metric_name                = "AWSCommonRules"
    }
  }
}
