variable "zededa_controller_url" {
  description = "zededa cloud URL"
  type        = string
}

variable "zededa_token" {
  description = "Zededa cloud access token"
  type        = string
}

variable "rancher_server_url" {
  description = "rancher multi cluster manager URL"
  type        = string
}

variable "rancher2_access_key" {
  description = "rancher server access key"
  type        = string
}

variable "rancher2_secret_key" {
  description = "rancher server secret key/token"
  type        = string
}

variable "cluster_name" {
  description = "cluster name"
  default     = "cluster-tf01"
  type        = string
}

variable "rancher_edge_app" {
  description = "zededa edge app from marketplace"
  default     = "k3s_runtime_gpu_enabled"
  type        = string
}

variable "edge_node" {
  description = "Edge node name"
  default     = "HPE-Demo-device"
  type        = string
}

variable "project_name" {
  description = "project name"
  default     = "kube-deploy"
  type        = string
}

variable "rancher2_project_name" {
  description = "rancher2 project name"
  default     = "Default"
  type        = string

}

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

variable "cluster_labels" {
  description = "Zededa tenant name"
  default = {
    pactme = "adnoc"
  }
  type = map(string)
}

variable "access_project" {
  description = "list of project permitted"
  type        = list(string)
}

variable "zededa_users" {
  type = map(string)
  default = {
    "dev1@zededa.com" : "dev1@zededa.com"
    "dev2@zededa.com" : "dev2@zededa.com"
    "dev3@zededa.com" : "dev3@zededa.com"
  }

}

variable "access_edgeapp" {
  description = "access permission to edge apps"
  type        = string
}

variable "access_app_instance" {
  description = "access permission to edge app instance"
  type        = string
}

variable "access_user" {
  description = "access permission to user managent"
  type        = string
}

variable "access_enterprise" {
  description = "access to the third party integratoion"
  type        = string
}

variable "role_name" {
  description = "RBAC role name"
  type        = string
}

variable "access_device" {
  description = "access to the device"
  type        = string
}
