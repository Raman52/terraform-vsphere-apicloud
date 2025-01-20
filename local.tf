locals {
  session_id = jsondecode(data.http.get_session.response_body)["value"]
}