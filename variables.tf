variable "name" {
  type        = string
  description = "Name of the service or product"
}

variable "api_token" {
  type        = string
  description = "The stripe API token to use"
}

variable "pricing_plans" {
  type        = list(object({
    amount   = number
    interval = string
    currency = string
  }))
}

variable "webhook_endpoint" {
  type        = string
  default     = ""
  description = "URL to send charge events to (failed or succeeded)"
}
