provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}
data "http" "get_session" {
  url    = "https://${var.vsphere_server}/rest/com/vmware/cis/session"
  method = "POST"
  request_headers = {
    "Authorization" = "Basic ${base64encode("${var.vsphere_user}:${var.vsphere_password}")}"
    "Content-Type"  = "application/json"
  }
  insecure = true
}
 
# data "http" "shutdown_vm" {
#   url = "https://192.168.29.80/rest/vcenter/vm/vm-vm-101/power/stop"
#   method = "POST"
 
#   request_headers = {
#     "vmware-api-session-id" = local.session_id
#   }
 
#   insecure = true
# }
# output "shutdown_vm_response" {
#   value = data.http.shutdown_vm.response_body
# }
 
# data "http" "power_on" {
#   url = "https://192.168.29.80/rest/vcenter/vm/vm-101/power/start"
#   method = "POST"
 
#   request_headers = {
#     "vmware-api-session-id" = local.session_id
#   }
 
#   insecure = true
# }
 
data "http" "list_vms" {
  url = "https://${var.vsphere_server}/rest/vcenter/vm/vm-101"              #?filter.power_states=POWERED_ON
 
  request_headers = {
    "vmware-api-session-id" = local.session_id
  }
 
  insecure = true
}
 