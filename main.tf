resource "oci_dataflow_run_statement" "dataflow_run_statements" {
  for_each = var.dataflow_run_statements

  code   = each.value.code
  run_id = each.value.run_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

