job "example-lxc" {
  datacenters = ["dc1"]
  type        = "service"

  group "example" {
    task "example" {
      driver = "lxc"

      config {
        log_level = "trace"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-busybox"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}