locals {
  resource_name="${var.project_name}-${var.environment}"
  vpc_id=data.aws_ssm_parameter.vpc_id.value
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  #-id mysql_sg_id=data.aws_ssm_parameter.mysql_sg_id.value
  # database_subnet_group_name=data.aws_ssm_parameter.database_subnet_group_name.value
  
  
#  StringList --> List == ["subnet-1","subnet-2"] --> subnet[0]
}