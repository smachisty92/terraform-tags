resource "aws_ec2_tag" "tag" {
  count = length(data.terraform_remote_state.ec2.outputs.ALL_TAGS_IDS)
  resource_id = element(var.RESOURCE_ID,count.index)
  key         = var.TAG_NAME
  value       = var.TAG_VALUE
}