module "keyvault_keys" {
  depends_on = [module.keyvaults, module.keyvault_access_policies]

  source = "./modules/security/keyvault_key"

  for_each = local.security.keyvault_keys

  global_settings = local.global_settings
  settings        = each.value
  keyvaults       = local.combined_objects_keyvaults
  client_config   = local.client_config
}

#[try(each.value.lz_key, local.client_config.landingzone_key)][each.value.keyvault_key].id
output "keyvault_keys" {
  value = module.keyvault_keys
}
