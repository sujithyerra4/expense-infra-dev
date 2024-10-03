
data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project_name}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "database_subnet_group_name" {
  name = "/${var.project_name}/${var.environment}/database_subnet_group_name"
}

data "aws_ami" "joindevops"{

    most_recent =true
    owners=["973714476881"]

    filter{
        name= "name"
        values=["RHEL-9-DevOps-Practice"]
    }
    # filter{
    #     name="root-device-type"
    #     values=["ebs"]
    # }
#      filter{
#         name= "virtualization-type"
#         values=["hvm"]
#   }
}