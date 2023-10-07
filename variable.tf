#create variable block
variable "region" {
  type    = string
  default = "us-west-1"
}
#create variable for aws instance
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "ami" {
  type    = string
  default = "ami-0f8e81a3da6e2510a"
}
variable "instance_name" {
  type    = string
  default = "tier3_Ubuntu2"
}
variable "cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}