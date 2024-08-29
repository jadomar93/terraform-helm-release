variable "name" {
  type        = string
  default     = "wordpress"
  description = "my wordpress application"
}

variable "chart" {
  type        = string
  default     = "../myapp"
  description = "location of my wordpress app chart"
}

variable "namespace" {
  type        = string
  description = "the namespace for app"
  default     = "mywordpressapp"
}