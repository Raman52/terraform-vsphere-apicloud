variable "vsphere_user" {
  description = "The vSphere username"
  type        = string
  default     = "administrator@vsphere.local"
}

variable "vsphere_password" {
  description = "The vSphere password"
  type        = string
  sensitive   = true
}
variable "vsphere_server" {
  description = "The vSphere server IP or hostname"
  default     = "192.168.29.80"
}