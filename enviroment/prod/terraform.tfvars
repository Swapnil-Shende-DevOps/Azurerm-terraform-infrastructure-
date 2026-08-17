rgs = {
  rg1 = {
    name     = "prod-rg"
    location = "eastus"
  }
  rg2 = {
    name     = "prod-rg2"
    location = "eastus"
  }
}

vnet = {
  vnet1 = {
    vnet_name     = "prod-vnet"
    rg_name       = "prod-rg"
    vnet_location = "eastus"
    add           = ["10.1.0.0/16"]
  }
}

subnet = {
  frontend = {
    rg   = "prod-rg"
    vnet = "prod-vnet"
    add  = ["10.1.1.0/24"]
  }
  backend = {
    rg   = "prod-rg"
    vnet = "prod-vnet"
    add  = ["10.1.2.0/24"]
  }
}

