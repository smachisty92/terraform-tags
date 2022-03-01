resource "aws_ec2_tag" "tag" {
  count = length(var.RESOURCE_ID)
  resource_id = element(var.RESOURCE_ID,count.index)
  key         = var.TAG_NAME
  value       = var.TAG_VALUE
}