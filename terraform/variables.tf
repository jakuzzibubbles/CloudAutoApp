variable "availability_zones" {
  type    = list(string)
  default = ["eu-central-1a", "eu-central-1b"]
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}
