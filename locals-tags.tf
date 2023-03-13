locals {
  default_tags = {
    Environment    = var.environment
    Application    = var.application
    CostCenter     = var.costcenter
    Change         = var.change
    Owner          = var.owner
    SPOC           = var.spoc
    TLP            = var.tlp
    CiaRating      = var.cia_rating
    TechnicalOwner = var.technicalowner

  }
}