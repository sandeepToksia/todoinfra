data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvaults" {
  for_each = var.keyvaults

  name = each.key
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  sku_name = each.value.sku_name
  tenant_id = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled = each.value.purge_protection_enabled

  tags = each.value.tags

  dynamic "access_policy" {
    for_each = each.value.access_policies
    content {
      tenant_id = access_policies.tenant_id
      object_id = access_policies.object_id
      key_permissions = access_policies.key_permissions
      secret_permissions = access_policies.secret_permissions
      certificate_permissions = access_policies.certificate_permissions
    }
  }
}