module "rg" {
  source      = "../child_modules/RG"
  rg_name     = "sagar-rg"
  rg_location = "France Central"
}

module "storage_account" {
  source               = "../child_modules/Storage Account"
  storage_account_name = "sagarstorageaccount1212"
  rg_name              = "sagar-rg"
  rg_location          = "France Central"

}