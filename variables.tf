variable "project_name" {
  type    = string
  default = "TF-home"
}

variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "bucket_name" {
  type = string
}

variable "enable_versioning" {
  type    = bool
  default = true
}


# 独自ドメイン（使う場合のみ）
variable "use_custom_domain" {
  type = bool 
  default = false
}

variable "domain_name" { 
  type = string 
  default = null 
}

variable "alternative_names" { 
  type = list(string) 
  default = [] 
}
variable "hosted_zone_id" {
  type = string 
  default = null 
}