variable "application" {
  description = "Tag - The application the resource is part of - match CMDB application name"
  type        = string
}

variable "owner" {
  description = "Tag - Business Manager for the application the resource is part of - match CMDB owned_by"
  type        = string
  default     = ""
}
variable "environment" {
  description = "Tag -  SDLC Environment the resource is part of"
  type        = string
}

variable "spoc" {
  description = "Tag - Financial Owner - Required for Cloud financial management."
  type        = string
}

variable "cost_center" {
  description = "Tag - Cost Center associated with the workload "
  type        = string
  default     = ""
}

variable "change" {
  description = "Tag - Snow change request"
  type        = string
  default     = ""
}

variable "tlp_colour" {
  description = "Tag - Traffic Light Protocol colour"
  type        = string
  validation {
    condition     = contains(["RED", "AMBER", "GREEN", "WHITE"], var.tlp_colour)
    error_message = "Invalid variable: ${var.tlp.colour}. The valid TLP colours are RED, AMBER, GREEN, WHITE"
  }
}

variable "cia_rating" {
  description = "Tag - CIA Rating "
  type        = string
}

variable "technical_owner" {
  description = "Tag - Primary Group supporting the application this resource is part of - match CMDB supported_by"
  type        = string
}