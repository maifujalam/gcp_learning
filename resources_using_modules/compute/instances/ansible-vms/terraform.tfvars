project_id="alam-project1"
region = "us-central1"
zone = "us-central1-c"
name = "webserver"
disk_size = 20
machine_os = "rhel"
vpc = "default"
ssh_user = "alam"
external_ip = true
vm_count = 3
labels = {
  "webserver":""
}