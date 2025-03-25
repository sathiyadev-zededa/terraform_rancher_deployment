terraform {
  required_providers {
    zedcloud = {
      source  = "zededa/zedcloud"
      version = "2.3.0-RC"
    }
  }
}

resource "zedcloud_role" "role_admin" {
  //for_each = toset(var.access_project)
  name     = var.role_name
  title    = var.role_name
  type     = "USER_ROLE_USER_DEFINED"
  state    = "ROLE_STATE_ACTIVE"
  scopes {
    access_device       = var.access_device
    access_app_instance = var.access_device
    access_enterprise   = var.access_enterprise
    access_user         = var.access_user
    access_edge_app     = var.access_edgeapp
    project_filter      = var.access_project
  }
}

resource "zedcloud_user" "names" {
  for_each = var.zededa_users
  username = each.key
  email    = each.value
  role_id  = zedcloud_role.role_admin.id
}