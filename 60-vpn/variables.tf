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

variable "vpn_tags" {

    default = {
      component="vpn"
    }
  
}