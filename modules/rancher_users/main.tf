terraform {
  required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = "6.1.4"
    }
  }
}

resource "rancher2_user" "users" {
  for_each = toset(var.rancher_usernames)
  username = each.key
  password = var.rancher_password
  name     = each.key
  enabled  = true
  must_change_password = true
}

resource "rancher2_global_role_binding" "users" {
  for_each = rancher2_user.users
  name           = rancher2_user.users[each.key].name
  global_role_id = "user"
  user_id        = rancher2_user.users[each.key].id
}

resource "rancher2_cluster_role_template_binding" "user_binding" {
    for_each = rancher2_user.users
    name = rancher2_user.users[each.key].name
    cluster_id = var.cluster_instance_id
    user_id = rancher2_user.users[each.key].id
    role_template_id = "cluster-admin"
}