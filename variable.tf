variable "enable_versioning" {
  description = "Enable bucket versioning"
  type        = bool
  default     = false
}

variable "enable_lifecycle" {
  description = "Enable bucket lifecycle policy"
  type        = bool
  default     = false
}
