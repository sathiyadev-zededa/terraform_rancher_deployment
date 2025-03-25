variable "rancher_usernames" {
  description = "List of Rancher usernames"
  type        = list(string)
}

variable "rancher_password" {
  description = "Initial password for Rancher users"
  type        = string
}

variable "user_global_role" {
  description = "Global role assigned to Rancher users"
  type        = string
}

variable "cluster_instance_id" {
  description = "cluster instance id"
  type = string
}