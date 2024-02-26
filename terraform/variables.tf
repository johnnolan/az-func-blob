variable "subscription_id" {
    type        = string
    description = "This is an example input variable using env variables."
}

variable "tenant_id" {
    type        = string
    description = "This is an example input variable using env variables."
}

variable "client_id" {
    type        = string
    description = "This is an example input variable using env variables."
}

variable "client_secret" {
    type        = string
    description = "This is an example input variable using env variables."
}

variable "project" {
  type        = string
  default     = "azfuncblob"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "location" {
  type        = string
  default     = "ukwest"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}
