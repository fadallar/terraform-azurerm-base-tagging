locals {
  default_tags = {
    Environment    = var.environment
    Application    = var.application
    CostCenter     = var.cost_center
    Change         = var.change
    Owner          = var.owner
    SPOC           = var.spoc
    TLP            = var.tlp_colour
    CiaRating      = var.cia_rating
    TechnicalOwner = var.technical_owner

  }
}