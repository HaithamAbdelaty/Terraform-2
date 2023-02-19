variable "ami" {
  description = "ami-name"
  type        = string
}
variable "instance_type" {
  type = string
}
variable "key_pair_name" {
  type = string
}
variable "pub_zone_name" {
  type = list(any)

}
variable "my_cidr_block" {
  type = list(any)
}
