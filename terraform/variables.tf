variable "namespace" {
  type = string
}
variable "deployment_name" {
  type = string
}
variable "service_name" {
  type = string
}
variable "image_registry" {
  type = string
}
variable "image_name" {
  type = string
}
variable "image_tag" {
  type = string
}
variable "container_port" {
  type = number
}
variable "nodeport" {
  type = number
}