region    = "us-east1"
zone      = "us-east1-a"
name      = "webserver-ingress"
vpc       = "default"
direction = "INGRESS"
ingress  = [
  {
    protocol = "tcp"
    port     = ["22", "443","80", "8080"]
  },
  {
    protocol = "icmp"
  }
]