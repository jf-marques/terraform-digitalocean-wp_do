
output "wp_lb_ip" {
  value = digitalocean_loadbalancer.wp_lb.ip
  description = "IP do load balancer"
}

output "wp_vm_ips" {
  value = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "IPs das máquinas wordpress"
}

output "nfs_vm_ip" {
  value = digitalocean_droplet.vm_nfs.ipv4_address
  description = "IP do NFS"
}

output "wp_db_user" {
  value     = digitalocean_database_user.wp_database_user.name
  description = "Usuario do banco de dados"
}

output "wp_db_pwd" {
  value     = digitalocean_database_user.wp_database_user.password
  description = "Senha do banco de dados"
  sensitive = true
}