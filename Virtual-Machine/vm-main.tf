module "AWS" {
  source = "./AWS-VM"
  count = var.cloud_provider_2 == "AWS" ? 1 : 0
  resource_name = var.resource_name
  
}

module "Azure" {
    source = "./Azure-VM"
    count = var.cloud_provider_2 == "Azure" ? 1 : 0
    resource_name = var.resource_name
    cidr-vnet = var.cidr-vnet
    subent-cidr = var.subent-cidr
  
}

module "GCP" {
    source = "./GCP-VM"
    count = var.cloud_provider_2 == "GCP" ? 1 : 0
    resource_name = var.resource_name
}