provider "azurerm" {
    features {}
}

resource "azure_resource_group" "work360" {
    name = "work360"
    location = "West Europe"
}

resource "azure_kubernetes_cluster" "exmaple" {
    name = "aks_work360"
    location = azure_resource_group.work360.location
    resource_group_name = azure_resource_group.work360.name
    dns_prefix = "aks"

    default_node_pool {
        name = "aks_np"
        node_count = 1
        vm_size = "Standard_B1s"
    }
    
    identity {
        type = "SystemAssigned"
    }
}
