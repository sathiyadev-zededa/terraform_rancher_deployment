# deployment
# deployment
[deployment  Diagram](./Deployment.png)

This Terraform project automates the provisioning of resources using the Zededa and Rancher providers. The input variables are defined in the terraform.tfvars file.

#### Features:

    1. Creates Rancher clusters and assigns users with roles (Cluster attach workflow)
    2. Create K3s runtime and attach the cluster to Rancher management
    3. Zededa and the rancher user create code is available in module form. 

#### prerequisites:

    Ensure you have the following 
    1. Terraform
    2. Access to the rancher and Zededa orchestration user access

#### Project structure:

    ├── modules/
│   ├── rancher_users/         # Module to create Rancher users
│   ├── zededa_users/          # Module to manage Zededa devices
├── cluster_reaource.tf        # terraform rancher configuration
├── zededa_resource.tf         # terraform zededa configuration
├── providers.tf               # Provider configurations (Zededa, Rancher)
├── variables.tf               # Input variable definitions
├── terraform.tfvars           # User-specific values for variables
├── outputs.tf                 # Outputs from Terraform
└── README.md                  # Project documentation

#### Initialize terraform:

terraform init

#### Plan the Deployment 

terraform plan 

#### Apply Change 

terraform apply -auto-approve

#### Destroy Resources

terraform destroy -auto-approve

#### Project Overview

This project automates the provisioning of Zededa and Rancher resources, streamlining the deployment of edge infrastructure. It facilitates the automated creation of a K3s cluster on an edge device and ensures seamless integration with Rancher Manager for centralized management.

#### Key Features

1. Automated Resource Creation: Simplifies the setup of required components within Zededa and Rancher.

2. K3s Cluster Deployment: Automatically installs and configures K3s on edge devices.

2. Cluster Labeling & Group Assignment: The cluster is created with a specific label, enabling automatic attachment to a predefined cluster group in Rancher.

3. Automated Helm Configuration: Once assigned to the cluster group, the predefined Helm chart is automatically applied, ensuring the necessary configurations and workloads are deployed.

