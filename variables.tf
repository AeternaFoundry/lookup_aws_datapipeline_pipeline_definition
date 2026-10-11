variable "datapipeline_pipeline_definition_lookup" {
  description = <<EOT
Map of datapipeline_pipeline_definition_lookup, attributes below
Required:
    - pipeline_id
Optional:
    - region
EOT

  type = map(object({
    pipeline_id = string
    region      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.datapipeline_pipeline_definition_lookup : (
        length(v.pipeline_id) >= 1 && length(v.pipeline_id) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
}

