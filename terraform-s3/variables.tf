variable "create_bucket" {
  type        = bool
  default     = true
}

variable "attach_elb_log_delivery_policy" {
  type        = bool
  default     = false
}

variable "attach_deny_insecure_transport_policy" {
  type        = bool
  default     = false
}

variable "attach_policy" {
  type        = bool
  default     = false
}

variable "attach_public_policy" {
  type        = bool
  default     = true
}

variable "bucket" {
  type        = string
  default     = null
}

variable "bucket_prefix" {
  type        = string
  default     = null
}

variable "acl" {
  type        = string
  default     = "private"
}

variable "policy" {
  type        = string
  default     = null
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "force_destroy" {
  type        = bool
  default     = false
}

variable "acceleration_status" {
  type        = string
  default     = null
}

variable "request_payer" {
  type        = string
  default     = null
}

variable "website" {
  type        = map(string)
  default     = {}
}

variable "cors_rule" {
  type        = any
  default     = []
}

variable "versioning" {
  type        = map(string)
  default     = {}
}

variable "logging" {
  type        = map(string)
  default     = {}
}

variable "grant" {
  type        = any
  default     = []
}

variable "lifecycle_rule" {
  type        = any
  default     = []
}

variable "replication_configuration" {
  type        = any
  default     = {}
}

variable "server_side_encryption_configuration" {
  type        = any
  default     = {}
}

variable "object_lock_configuration" {
  type        = any
  default     = {}
}

variable "block_public_acls" {
  type        = bool
  default     = false
}

variable "block_public_policy" {
  type        = bool
  default     = false
}

variable "ignore_public_acls" {
  type        = bool
  default     = false
}

variable "restrict_public_buckets" {
  type        = bool
  default     = false
}
