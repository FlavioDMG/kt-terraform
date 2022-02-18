variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_account_id" {
  type        = number
  description = ""
  default     = 393760792478
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-033b95fb8079dc481" #AMI: ref. região us-east-1
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "service_name" {
  type        = string
  description = ""
  default     = "autoscaling-app"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Server_Vai_Corinthians"
    Project = "Treinamento Terraform Flavio"
  }
}
