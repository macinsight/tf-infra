resource "docker_container" "nginx" {
  image = "nginx:latest"
  name  = "nginx_server"
  ports {
    internal = 80
    external = 80
  }
}
