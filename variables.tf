#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

#
# Connection Fields
#

variable "hosts" {
  description = "The host list of the PostgreSQL service."
  type        = list(string)
}

variable "hosts_readonly" {
  description = "The readonly host list of the PostgreSQL service."
  type        = list(string)
  default     = []
}

variable "port" {
  description = "The port of the PostgreSQL service."
  type        = number
  default     = 5432
}

variable "database" {
  description = "The name of the PostgreSQL database to access."
  type        = string
}

variable "username" {
  description = "The username of the account to access the database."
  type        = string
}

variable "password" {
  description = "The password of the account to access the database."
  type        = string
  sensitive   = true
}
