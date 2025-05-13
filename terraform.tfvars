zededa_controller_url = "https://zedcontrol.pactme.zededa.net"
zededa_token          = ""                                             #replace with correct Zededa token
rancher2_access_key   = ""                                             #replace with rancher token 
rancher2_secret_key   = ""                                             #replace with rancher secret
rancher_server_url    = ""                                             #replace rancher URL
rancher_usernames     = ["dev-1", "dev-2", "dev-3"]                    #user create in rancher
rancher_password      = ""                                              #replace with correct password                
user_global_role      = "user"
role_name = "kube-deploy-admin"
access_project = ["kube-deploy"]                                        #user access to Zededa project
zededa_users = {
    "user1@zededa.com": "user1@zededa.com"
    "user2@zededa.com": "user2@zededa.com"
    "user3@zededa.com": "user3@zededa.com"
}
access_edgeapp = "PermissionAccessCreateReadUpdateDelete"
access_app_instance = "PermissionAccessCreateReadUpdateDelete"
access_device = "PermissionAccessCreateReadUpdateDelete"
access_enterprise = "PermissionAccessRead"
access_user = "PermissionAccessCreateReadUpdateDelete"

