rgs ={

    "rg1" = {
        r_name = "res1"
        location = "westus"
    }

}

sas ={

    "sas1" = {
        s_name = "store18856"
        r_name = "res1"
        location = "westus"
    }
    
}

vnet_m = {
    "vnet1" = {
        v_name = "vnet1"
        location = "westus"
        r_name = "res1"
        address_space = ["10.0.0.0/16"]
    }
}

subnet_m = {
    "subnet1" = {
        s_name = "Frontendsub"
        r_name = "res1"
        v_name = "vnet1"
        address_prefixes = ["10.0.1.0/24"]
    },

    "subnet2" = {
        s_name = "Backendsub"
        r_name = "res1"
        v_name = "vnet1"
        address_prefixes = ["10.0.2.0/24"]
    }
}


vm_m = {
    "vm1" ={
     vm_name = "vmmachine1"   
     nic_name = "nic1"
     location = "westus"
     v_name = "vnet1"
     r_name = "res1"
     s_name = "Frontendsub"
    }
}