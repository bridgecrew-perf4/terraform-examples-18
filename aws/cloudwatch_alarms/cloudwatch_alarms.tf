#==================================================
#       CloudWatch Billing Alarm with SNS
#==================================================

# Sets up a CloudWatch billing alarm that gets triggered when estimated monthly charges exceed $10
resource "aws_cloudwatch_metric_alarm" "billing_alarm" {
  actions_enabled     = true
  alarm_actions       = [aws_sns_topic.billing_alarm.arn]
  alarm_description   = "Sends an email when AWS estimated monthly charge goes over $10"
  alarm_name          = "Billing Alarm"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  dimensions          = { Currency = "USD" }
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 21600
  statistic           = "Maximum"
  threshold           = 10
  treat_missing_data  = "missing"
}

# Creates billing_alarm topic
resource "aws_sns_topic" "billing_alarm" {
  name = "billing_alarm"
}

# Creates email subscription for the billing_alarm topic
resource "aws_sns_topic_subscription" "billing_alarm" {
  endpoint  = "email@example.com"
  protocol  = "email"
  topic_arn = aws_sns_topic.billing_alarm.arn
}
