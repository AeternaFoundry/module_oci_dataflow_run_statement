variable "dataflow_run_statements" {
  description = <<EOT
Map of dataflow_run_statements, attributes below
Required:
    - code
    - run_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    code   = string
    run_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

