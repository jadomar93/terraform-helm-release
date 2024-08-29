module "mypythonapp" {
  source    = "../terraform"
  name      = "python"
  namespace = "python-namespace"
  chart     = "../myapp"
  values    = [<<EOF
replicaCount: 2
image:
  repository: nginx
  pullPolicy: IfNotPresent
  tag: "latest"
EOF]
}

module "mygoapp" {
  source    = "../terraform"
  name      = "go"
  namespace = "go-namespace"
  chart     = "../myapp"
  values    = [<<EOF
replicaCount: 2
image:
  repository: nginx
  pullPolicy: IfNotPresent
  tag: "latest"
EOF]
}