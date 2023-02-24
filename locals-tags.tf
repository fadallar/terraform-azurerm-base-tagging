locals {
  default_tags = {
    Environment = var.environment
    Application = var.stack
    CostCenter  = var.costcenter
    Owner       = var.owner
    SPOC        = var.spoc
    Change      = var.change
  }
}