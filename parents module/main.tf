module "rg_module" {
  source = "../chaild module/rg"
  rg_name ="rg"
  rg_location = "Central India"
}
module "v_net_module" {
  depends_on = [ module.rg_module ]
  source = "../chaild module/V_Net"
  v_net_name = "v_net_1"
  rg_name ="rg"
  rg_location = "Central India"
  add_space = [ "10.0.0.0/16" ]
}
module "subnet_module" {
  depends_on = [ module.v_net_module ]
  source = "../chaild module/Subnet"
  subnet_name = "subnet_1"
  rg_name ="rg"
  rg_location = "Central India"
  v_net_name = "v_net_1"
  add_prefixes =["10.0.0.0/24"]
}
module "nic_module" {
    depends_on = [ module.rg_module, module.subnet_module]
  source = "../chaild module/nic"
  rg_name ="rg"
  rg_location = "Central India"
  subnet_name = "subnet_1"
  v_net_name = "v_net_1"
  nic_name = "nic_1"
}