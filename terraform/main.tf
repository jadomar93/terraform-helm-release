resource "helm_release" "wordpress" {
  name             = var.name
  chart            = var.chart
  namespace        = var.namespace
  create_namespace = true
  wait             = false
  values           = var.values
  namespace        = "mywordpressapp"
  create_namespace = true
}

variable name { 
    type  = string
    default = "wordpress"
    description = "location of my wordpress app chart "
  

}

variable "chart" {
      type = string
      default= "../myapp"
      description = 
}