resource "azurerm_container_group" "work360-container-group" {
  location            = azurerm_resource_group.Work360-rg.location
  name                = "work360-container-group"
  os_type             = "Linux"
  resource_group_name = azurerm_resource_group.Work360-rg.name
  
  container {
    cpu    = 0.5
    image  = "docker.io/kamil4921/work360-services-employee:latest"
    memory = 1
    name   = "work360-employee"

    ports {
      port = 80
      protocol = "TCP"
    }
  }
  
  container {
    cpu    = 0.5
    image  = "docker.io/kamil4921/work360-services-leaves:latest"
    memory = 1
    name   = "work360-leaves"
    
    ports {
      port = 81
      protocol = "TCP"
    }
  }
  
  container {
    cpu    = 0.5
    image  = "docker.io/kamil4921/work360-services-notification:latest"
    memory = 1
    name   = "work360-notification"

    ports {
      port = 82
      protocol = "TCP"
    }
  }
}