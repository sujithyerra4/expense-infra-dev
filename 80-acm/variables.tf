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


variable "zone_name" {
  default = "sujithyerra.online"
  
}

variable "zone_id" {
  default = ""
}