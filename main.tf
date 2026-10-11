data "aws_datapipeline_pipeline_definition" "datapipeline_pipeline_definition_lookup" {
  for_each = var.datapipeline_pipeline_definition_lookup

  pipeline_id = each.value.pipeline_id
  region      = each.value.region
}

