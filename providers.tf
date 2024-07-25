provider "docker" {
  host = "ssh://root@server02.fsn.macinsight.net"
}

resource "docker_container" "nginx" {
  image = "nginx:latest"
  name  = "nginx_server"
  ports {
    internal = 80
    external = 80
  }
}
