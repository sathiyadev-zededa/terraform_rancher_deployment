variable "access_project" {
    description = "list of project permitted"
    type = list(string)
}

variable "zededa_users" {
    type = map(string)
    default = {
        "dev1@zededa.com": "dev1@zededa.com"
        "dev2@zededa.com": "dev2@zededa.com"
        "dev3@zededa.com": "dev3@zededa.com"
    }
  
}

variable "access_edgeapp" {
    description = "access permission to edge apps"
    type = string
}

variable "access_app_instance" {
    description = "access permission to edge app instance"
    type = string
}

variable "access_user" {
    description = "access permission to user managent"
    type = string
}

variable "access_enterprise" {
    description = "access to the third party integratoion"
    type = string
}

variable "role_name" {
    description = "RBAC role name"
    type = string
}

variable "access_device" {
    description = "access to the device"
    type = string
}