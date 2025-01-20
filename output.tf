output "session_id" {
  value = jsondecode(data.http.get_session.response_body)["value"]
  #sensitive = true
}
 
output "vm_list" {
  value = jsondecode(data.http.list_vms.response_body)
}