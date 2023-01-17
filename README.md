# Base Tagging 
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/)



This Terraform module is an helper module used to generate a map(object)  consisting of Azure Tags considered as base(core) tags to be added to the resources we deploy on Azure.

If new TAGS are required they should be added to the locals-tags.tf file and declared in the variables file.

The map(object), consisting of the Tags, is exposed as an output of the module and named "base_tags"

The following code snippet shows an example of consuming the base tags for a resource

```hcl
module "base_tagging" {
  source  = "app.terraform.io/<ORGANIZATION>/base-tagging/azurerm"
  version = "x.y.z"
  environment = var.environment
  stack = var.stack
  spoc =  var.spoc
  change = var.change
  costcenter = var.costcenter
  owner = var.owner
}

resource "azurerm_resource_group" "main_rg" {
  name     = "myresourcegroup"
  location = "eu-west"

  tags = module.base_tagging.base_tags
}
```


## Related documentation

Microsoft Azure documentation: [Azure Resource Tagging](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources?tabs=json)