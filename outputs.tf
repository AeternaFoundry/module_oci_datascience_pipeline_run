output "datascience_pipeline_runs_id" {
  description = "Map of id values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no id are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_pipeline_runs_compartment_id" {
  description = "Map of compartment_id values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_pipeline_runs_configuration_details" {
  description = "Map of configuration_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no configuration_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.configuration_details if v.configuration_details != null && length(v.configuration_details) > 0 }
}
output "datascience_pipeline_runs_configuration_override_details" {
  description = "Map of configuration_override_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => one(v.configuration_override_details) if v.configuration_override_details != null && length(v.configuration_override_details) > 0 }
}
output "datascience_pipeline_runs_created_by" {
  description = "Map of created_by values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no created_by are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "datascience_pipeline_runs_defined_tags" {
  description = "Map of defined_tags values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datascience_pipeline_runs_delete_related_job_runs" {
  description = "Map of delete_related_job_runs values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no delete_related_job_runs are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.delete_related_job_runs if v.delete_related_job_runs != null }
}
output "datascience_pipeline_runs_display_name" {
  description = "Map of display_name values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no display_name are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datascience_pipeline_runs_freeform_tags" {
  description = "Map of freeform_tags values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datascience_pipeline_runs_infrastructure_configuration_override_details" {
  description = "Map of infrastructure_configuration_override_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no infrastructure_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => one(v.infrastructure_configuration_override_details) if v.infrastructure_configuration_override_details != null && length(v.infrastructure_configuration_override_details) > 0 }
}
output "datascience_pipeline_runs_lifecycle_details" {
  description = "Map of lifecycle_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datascience_pipeline_runs_log_configuration_override_details" {
  description = "Map of log_configuration_override_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no log_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => one(v.log_configuration_override_details) if v.log_configuration_override_details != null && length(v.log_configuration_override_details) > 0 }
}
output "datascience_pipeline_runs_log_details" {
  description = "Map of log_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no log_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.log_details if v.log_details != null && length(v.log_details) > 0 }
}
output "datascience_pipeline_runs_opc_parent_rpt_url" {
  description = "Map of opc_parent_rpt_url values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no opc_parent_rpt_url are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.opc_parent_rpt_url if v.opc_parent_rpt_url != null && length(v.opc_parent_rpt_url) > 0 }
}
output "datascience_pipeline_runs_parameters_override" {
  description = "Map of parameters_override values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no parameters_override are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.parameters_override if v.parameters_override != null && length(v.parameters_override) > 0 }
}
output "datascience_pipeline_runs_pipeline_id" {
  description = "Map of pipeline_id values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no pipeline_id are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.pipeline_id if v.pipeline_id != null && length(v.pipeline_id) > 0 }
}
output "datascience_pipeline_runs_project_id" {
  description = "Map of project_id values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no project_id are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "datascience_pipeline_runs_state" {
  description = "Map of state values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no state are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datascience_pipeline_runs_step_override_details" {
  description = "Map of step_override_details values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no step_override_details are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.step_override_details if v.step_override_details != null && length(v.step_override_details) > 0 }
}
output "datascience_pipeline_runs_step_runs" {
  description = "Map of step_runs values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no step_runs are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.step_runs if v.step_runs != null && length(v.step_runs) > 0 }
}
output "datascience_pipeline_runs_storage_mount_configuration_override_details_list" {
  description = "Map of storage_mount_configuration_override_details_list values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no storage_mount_configuration_override_details_list are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.storage_mount_configuration_override_details_list if v.storage_mount_configuration_override_details_list != null && length(v.storage_mount_configuration_override_details_list) > 0 }
}
output "datascience_pipeline_runs_system_tags" {
  description = "Map of system_tags values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no system_tags are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "datascience_pipeline_runs_time_accepted" {
  description = "Map of time_accepted values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no time_accepted are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.time_accepted if v.time_accepted != null && length(v.time_accepted) > 0 }
}
output "datascience_pipeline_runs_time_finished" {
  description = "Map of time_finished values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no time_finished are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.time_finished if v.time_finished != null && length(v.time_finished) > 0 }
}
output "datascience_pipeline_runs_time_started" {
  description = "Map of time_started values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no time_started are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.time_started if v.time_started != null && length(v.time_started) > 0 }
}
output "datascience_pipeline_runs_time_updated" {
  description = "Map of time_updated values across all datascience_pipeline_runs, keyed the same as var.datascience_pipeline_runs except keys with no time_updated are omitted"
  value       = { for k, v in oci_datascience_pipeline_run.datascience_pipeline_runs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

