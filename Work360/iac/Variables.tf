variable "env_id" {
  type = string
  default = "dev"
  description = "the environment id"
}

variable "subscription_id" {
  type = string
  description = "Azure subscription id"
  default = "fb04469b-d175-4d88-bb23-2840aeffee46"
}

variable "src_key" {
  type = string
  description = "The infrastructure source"
  default = "terraform"
}