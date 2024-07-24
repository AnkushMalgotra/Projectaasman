module "rg"{
    source = "../../modules/rg"
    rg =var.rgs
}


module "sa" {
    depends_on = [module.rg]
    source = "../../modules/sa"
    sa = var.sas
}

module "vnet_m" {

    depends_on = [module.rg]
    source = "../../modules/Vnet"
    vnet = var.vnet_m
  
}
module "subnet_m" {
    depends_on = [module.vnet_m]
    source = "../../modules/subnet"
    subnet = var.subnet_m 
}
module "vm_m" {

    depends_on = [module.subnet_m]
    source = "../../modules/Vmachine"
    vm = var.vm_m 
}