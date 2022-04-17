provider "azurerm" {
  version = "=3.0.0"

  subscription_id = "12a29f7f-26f9-4789-8a33-b81bf7285866"
  client_id       = "d508ed88-14f4-497b-9df0-224572405bc1"
  client_secret   = "ni97Q~F9m8B6139ZPFQgA13hzuKbjwhOzFCU0"
  tenant_id       = "8c637a63-7f95-4083-87de-51588cbfcf0e"
  features {}

}
terraform {
  backend "azurerm" {
    resource_group_name  = "storagerg"
    storage_account_name = "kak"
    container_name       = "container1"
    key                  = "w17DCQ7B71S+nZ11pM3fl9P7apd84DVWjMxg7SyJHU7Mi4g3qhZP+o7Iuc3nORgi59mFJWkvSBx++ASt8dLfgA=="
  }
}
