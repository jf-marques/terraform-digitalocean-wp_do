variable "region" {
  type    = string
  default = "nyc1"
}


variable "wp_vm_count" {
  type    = number
  default = 2
  description = "Número de máquinas wordpress"

  validation {
    condition = var.wp_vm_count > 1
    error_message = "O número de máquinas é 2"
  }
}

variable "vms_ssh" {
  type = string
  description = "Chave ssh para as VMs"
}


