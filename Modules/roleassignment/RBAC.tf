

# #role based access control
# #Based on assigned role they can able to access the resources based on role assogned.
# resource "azurerm_role_assignment" "role_assignment_main" {
#     scope = var.scopeid
#     role_definition_id = var.role_definition_id
#     principal_id = var.principal_id 
# }