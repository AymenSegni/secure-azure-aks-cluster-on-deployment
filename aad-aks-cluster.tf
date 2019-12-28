resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version
  
  agent_pool_profile {
    name            = var.agent_pool_name
    count           = var.node_count
    vm_size         = var.vm_size
    os_type         = var.os_type
    os_disk_size_gb = var.os_disk_size_gb
    vnet_subnet_id  = var.vnet_subnet_id
    max_pods        = var.max_pods
    type            = var.agent_pool_type
  }
  
  network_profile {
    network_plugin     = var.network_plugin
    network_policy     = "calico"
    service_cidr       = var.service_cidr
    dns_service_ip     = "10.0.0.10"
    docker_bridge_cidr = "172.17.0.1/16"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
  role_based_access_control {
    enabled           = true

    azure_active_directory {
      client_app_id       = var.AADCliAppId
      server_app_id       = var.AADServerAppId
      server_app_secret   = var.AADServerAppSecret
      tenant_id           = var.AADTenantId

    }

  }

 tags = {
        Environment = "Development"
    }

  lifecycle {
    prevent_destroy = true
  }
}
