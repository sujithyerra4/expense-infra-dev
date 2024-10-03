variable "common_tags" {
  default = {
    Project     = "expense"
    Terraform   = true
    Environment = "dev"
  }
}


variable "project_name" {

    default = "expense"
  
}
variable "environment" {

    default = "dev"
  
}
variable "rds_tags" {

    default = {
      component="mysql"
    }
  
}
variable "zone_name" {
  default = "sujithyerra.online"
  
}