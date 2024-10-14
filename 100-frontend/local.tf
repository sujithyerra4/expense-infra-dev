locals {
  resource_name="${var.project_name}-${var.environment}-frontend"
  frontend_sg_id=data.aws_ssm_parameter.backend_sg_id.value
  public_subnet_id=split(",",data.aws_ssm_parameter.public_subnet_ids.value)[0]
#  StringList --> List == ["subnet-1","subnet-2"] --> subnet[0]
vpc_id=data.aws_ssm_parameter.vpc_id.value
web_alb_listener_arn=data.aws_ssm_parameter.web_alb_listener_arn.value
}