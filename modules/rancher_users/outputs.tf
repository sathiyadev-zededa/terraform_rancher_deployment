output "user_ids" {
  value = { for user in rancher2_user.users : user.username => user.id }
}
