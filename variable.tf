variable "username" {
  default = "administrator@vsphere.local"
}
 
variable "password" {
  sensitive = true
  default = "Admin@123"
}
 
variable "vcenter_ip" {
  default = "192.168.29.80"
}