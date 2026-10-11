resource "oci_datascience_pipeline_run" "datascience_pipeline_runs" {
  for_each = var.datascience_pipeline_runs

  compartment_id          = each.value.compartment_id
  pipeline_id             = each.value.pipeline_id
  project_id              = each.value.project_id
  defined_tags            = each.value.defined_tags
  delete_related_job_runs = each.value.delete_related_job_runs
  display_name            = each.value.display_name
  freeform_tags           = each.value.freeform_tags
  opc_parent_rpt_url      = each.value.opc_parent_rpt_url
  parameters_override     = each.value.parameters_override
  system_tags             = each.value.system_tags

  dynamic "configuration_override_details" {
    for_each = each.value.configuration_override_details != null ? [each.value.configuration_override_details] : []
    content {
      command_line_arguments     = configuration_override_details.value.command_line_arguments
      environment_variables      = configuration_override_details.value.environment_variables
      maximum_runtime_in_minutes = configuration_override_details.value.maximum_runtime_in_minutes
      type                       = configuration_override_details.value.type
    }
  }

  dynamic "infrastructure_configuration_override_details" {
    for_each = each.value.infrastructure_configuration_override_details != null ? [each.value.infrastructure_configuration_override_details] : []
    content {
      block_storage_size_in_gbs               = infrastructure_configuration_override_details.value.block_storage_size_in_gbs
      block_storage_size_in_gbs_parameterized = infrastructure_configuration_override_details.value.block_storage_size_in_gbs_parameterized
      dynamic "shape_config_details" {
        for_each = infrastructure_configuration_override_details.value.shape_config_details != null ? [infrastructure_configuration_override_details.value.shape_config_details] : []
        content {
          cpu_baseline                = shape_config_details.value.cpu_baseline
          memory_in_gbs               = shape_config_details.value.memory_in_gbs
          memory_in_gbs_parameterized = shape_config_details.value.memory_in_gbs_parameterized
          ocpus                       = shape_config_details.value.ocpus
          ocpus_parameterized         = shape_config_details.value.ocpus_parameterized
        }
      }
      shape_name = infrastructure_configuration_override_details.value.shape_name
      subnet_id  = infrastructure_configuration_override_details.value.subnet_id
    }
  }

  dynamic "log_configuration_override_details" {
    for_each = each.value.log_configuration_override_details != null ? [each.value.log_configuration_override_details] : []
    content {
      enable_auto_log_creation = log_configuration_override_details.value.enable_auto_log_creation
      enable_logging           = log_configuration_override_details.value.enable_logging
      log_group_id             = log_configuration_override_details.value.log_group_id
      log_id                   = log_configuration_override_details.value.log_id
    }
  }

  dynamic "step_override_details" {
    for_each = each.value.step_override_details != null ? each.value.step_override_details : []
    content {
      step_configuration_details {
        command_line_arguments     = step_override_details.value.step_configuration_details.command_line_arguments
        environment_variables      = step_override_details.value.step_configuration_details.environment_variables
        maximum_runtime_in_minutes = step_override_details.value.step_configuration_details.maximum_runtime_in_minutes
      }
      dynamic "step_container_configuration_details" {
        for_each = step_override_details.value.step_container_configuration_details != null ? [step_override_details.value.step_container_configuration_details] : []
        content {
          cmd                = step_container_configuration_details.value.cmd
          container_type     = step_container_configuration_details.value.container_type
          entrypoint         = step_container_configuration_details.value.entrypoint
          image              = step_container_configuration_details.value.image
          image_digest       = step_container_configuration_details.value.image_digest
          image_signature_id = step_container_configuration_details.value.image_signature_id
        }
      }
      dynamic "step_dataflow_configuration_details" {
        for_each = step_override_details.value.step_dataflow_configuration_details != null ? [step_override_details.value.step_dataflow_configuration_details] : []
        content {
          configuration = step_dataflow_configuration_details.value.configuration
          driver_shape  = step_dataflow_configuration_details.value.driver_shape
          dynamic "driver_shape_config_details" {
            for_each = step_dataflow_configuration_details.value.driver_shape_config_details != null ? [step_dataflow_configuration_details.value.driver_shape_config_details] : []
            content {
              memory_in_gbs               = driver_shape_config_details.value.memory_in_gbs
              memory_in_gbs_parameterized = driver_shape_config_details.value.memory_in_gbs_parameterized
              ocpus                       = driver_shape_config_details.value.ocpus
              ocpus_parameterized         = driver_shape_config_details.value.ocpus_parameterized
            }
          }
          executor_shape = step_dataflow_configuration_details.value.executor_shape
          dynamic "executor_shape_config_details" {
            for_each = step_dataflow_configuration_details.value.executor_shape_config_details != null ? [step_dataflow_configuration_details.value.executor_shape_config_details] : []
            content {
              memory_in_gbs               = executor_shape_config_details.value.memory_in_gbs
              memory_in_gbs_parameterized = executor_shape_config_details.value.memory_in_gbs_parameterized
              ocpus                       = executor_shape_config_details.value.ocpus
              ocpus_parameterized         = executor_shape_config_details.value.ocpus_parameterized
            }
          }
          logs_bucket_uri      = step_dataflow_configuration_details.value.logs_bucket_uri
          num_executors        = step_dataflow_configuration_details.value.num_executors
          warehouse_bucket_uri = step_dataflow_configuration_details.value.warehouse_bucket_uri
        }
      }
      dynamic "step_infrastructure_configuration_details" {
        for_each = step_override_details.value.step_infrastructure_configuration_details != null ? [step_override_details.value.step_infrastructure_configuration_details] : []
        content {
          block_storage_size_in_gbs               = step_infrastructure_configuration_details.value.block_storage_size_in_gbs
          block_storage_size_in_gbs_parameterized = step_infrastructure_configuration_details.value.block_storage_size_in_gbs_parameterized
          dynamic "shape_config_details" {
            for_each = step_infrastructure_configuration_details.value.shape_config_details != null ? [step_infrastructure_configuration_details.value.shape_config_details] : []
            content {
              cpu_baseline                = shape_config_details.value.cpu_baseline
              memory_in_gbs               = shape_config_details.value.memory_in_gbs
              memory_in_gbs_parameterized = shape_config_details.value.memory_in_gbs_parameterized
              ocpus                       = shape_config_details.value.ocpus
              ocpus_parameterized         = shape_config_details.value.ocpus_parameterized
            }
          }
          shape_name = step_infrastructure_configuration_details.value.shape_name
          subnet_id  = step_infrastructure_configuration_details.value.subnet_id
        }
      }
      step_name = step_override_details.value.step_name
      dynamic "step_storage_mount_configuration_details_list" {
        for_each = step_override_details.value.step_storage_mount_configuration_details_list != null ? step_override_details.value.step_storage_mount_configuration_details_list : []
        content {
          bucket                     = step_storage_mount_configuration_details_list.value.bucket
          destination_directory_name = step_storage_mount_configuration_details_list.value.destination_directory_name
          destination_path           = step_storage_mount_configuration_details_list.value.destination_path
          export_id                  = step_storage_mount_configuration_details_list.value.export_id
          mount_target_id            = step_storage_mount_configuration_details_list.value.mount_target_id
          namespace                  = step_storage_mount_configuration_details_list.value.namespace
          prefix                     = step_storage_mount_configuration_details_list.value.prefix
          storage_type               = step_storage_mount_configuration_details_list.value.storage_type
        }
      }
    }
  }

  dynamic "storage_mount_configuration_override_details_list" {
    for_each = each.value.storage_mount_configuration_override_details_list != null ? each.value.storage_mount_configuration_override_details_list : []
    content {
      bucket                     = storage_mount_configuration_override_details_list.value.bucket
      destination_directory_name = storage_mount_configuration_override_details_list.value.destination_directory_name
      destination_path           = storage_mount_configuration_override_details_list.value.destination_path
      export_id                  = storage_mount_configuration_override_details_list.value.export_id
      mount_target_id            = storage_mount_configuration_override_details_list.value.mount_target_id
      namespace                  = storage_mount_configuration_override_details_list.value.namespace
      prefix                     = storage_mount_configuration_override_details_list.value.prefix
      storage_type               = storage_mount_configuration_override_details_list.value.storage_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

