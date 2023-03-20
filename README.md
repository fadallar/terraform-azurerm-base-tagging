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
<!-- BEGIN_TF_DOCS -->
    ## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | Tag - The application the resource is part of - match CMDB application name | `string` | n/a | yes |
| <a name="input_cia_rating"></a> [cia\_rating](#input\_cia\_rating) | Tag - CIA Rating | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Tag -  SDLC Environment the resource is part of | `string` | n/a | yes |
| <a name="input_spoc"></a> [spoc](#input\_spoc) | Tag - Financial Owner - Required for Cloud financial management. | `string` | n/a | yes |
| <a name="input_technical_owner"></a> [technical\_owner](#input\_technical\_owner) | Tag - Primary Group supporting the application this resource is part of - match CMDB supported\_by | `string` | n/a | yes |
| <a name="input_tlp_colour"></a> [tlp\_colour](#input\_tlp\_colour) | Tag - Traffic Light Protocol colour | `string` | n/a | yes |
| <a name="input_change"></a> [change](#input\_change) | Tag - Snow change request | `string` | `""` | no |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | Tag - Cost Center associated with the workload | `string` | `""` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Tag - Business Manager for the application the resource is part of - match CMDB owned\_by | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_base_tags"></a> [base\_tags](#output\_base\_tags) | Base Tags |
<!-- END_TF_DOCS -->