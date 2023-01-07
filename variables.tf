variable "environment" {
  description = "Environment name"
  type        = string
}

variable "stack" {
  description = "Stack name"
  type        = string
}

variable "owner" {
  description = "Tag - Technical Owner."
  type        = string
  default     = ""
}

variable "spoc" {
  description = "Tag - Financial Owner - Required for Cloud financial management."
  type        = string
}

variable "costcenter" {
  description = "Tag - Cost Center associated with the workload "
  type        = string
  default = ""
}

variable "change" {
  description = "Tag - Snow change request"
  type        = string
  default = ""
}