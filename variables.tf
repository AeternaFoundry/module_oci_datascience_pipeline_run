variable "datascience_pipeline_runs" {
  description = <<EOT
Map of datascience_pipeline_runs, attributes below
Required:
    - compartment_id
    - pipeline_id
    - project_id
Optional:
    - defined_tags
    - delete_related_job_runs
    - display_name
    - freeform_tags
    - opc_parent_rpt_url
    - parameters_override
    - system_tags
    - configuration_override_details (block):
        - command_line_arguments (optional)
        - environment_variables (optional)
        - maximum_runtime_in_minutes (optional)
        - type (required)
    - infrastructure_configuration_override_details (block):
        - block_storage_size_in_gbs (required)
        - block_storage_size_in_gbs_parameterized (optional)
        - shape_config_details (optional, block):
            - cpu_baseline (optional)
            - memory_in_gbs (optional)
            - memory_in_gbs_parameterized (optional)
            - ocpus (optional)
            - ocpus_parameterized (optional)
        - shape_name (required)
        - subnet_id (optional)
    - log_configuration_override_details (block):
        - enable_auto_log_creation (optional)
        - enable_logging (optional)
        - log_group_id (optional)
        - log_id (optional)
    - step_override_details (block):
        - step_configuration_details (required, block):
            - command_line_arguments (optional)
            - environment_variables (optional)
            - maximum_runtime_in_minutes (optional)
        - step_container_configuration_details (optional, block):
            - cmd (optional)
            - container_type (required)
            - entrypoint (optional)
            - image (required)
            - image_digest (optional)
            - image_signature_id (optional)
        - step_dataflow_configuration_details (optional, block):
            - configuration (optional)
            - driver_shape (optional)
            - driver_shape_config_details (optional, block):
                - memory_in_gbs (optional)
                - memory_in_gbs_parameterized (optional)
                - ocpus (optional)
                - ocpus_parameterized (optional)
            - executor_shape (optional)
            - executor_shape_config_details (optional, block):
                - memory_in_gbs (optional)
                - memory_in_gbs_parameterized (optional)
                - ocpus (optional)
                - ocpus_parameterized (optional)
            - logs_bucket_uri (optional)
            - num_executors (optional)
            - warehouse_bucket_uri (optional)
        - step_infrastructure_configuration_details (optional, block):
            - block_storage_size_in_gbs (required)
            - block_storage_size_in_gbs_parameterized (optional)
            - shape_config_details (optional, block):
                - cpu_baseline (optional)
                - memory_in_gbs (optional)
                - memory_in_gbs_parameterized (optional)
                - ocpus (optional)
                - ocpus_parameterized (optional)
            - shape_name (required)
            - subnet_id (optional)
        - step_name (required)
        - step_storage_mount_configuration_details_list (optional, block):
            - bucket (optional)
            - destination_directory_name (required)
            - destination_path (optional)
            - export_id (optional)
            - mount_target_id (optional)
            - namespace (optional)
            - prefix (optional)
            - storage_type (required)
    - storage_mount_configuration_override_details_list (block):
        - bucket (optional)
        - destination_directory_name (required)
        - destination_path (optional)
        - export_id (optional)
        - mount_target_id (optional)
        - namespace (optional)
        - prefix (optional)
        - storage_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    pipeline_id             = string
    project_id              = string
    defined_tags            = optional(map(string))
    delete_related_job_runs = optional(bool)
    display_name            = optional(string)
    freeform_tags           = optional(map(string))
    opc_parent_rpt_url      = optional(string)
    parameters_override     = optional(map(string))
    system_tags             = optional(map(string))
    configuration_override_details = optional(object({
      command_line_arguments     = optional(string)
      environment_variables      = optional(map(string))
      maximum_runtime_in_minutes = optional(string)
      type                       = string
    }))
    infrastructure_configuration_override_details = optional(object({
      block_storage_size_in_gbs               = number
      block_storage_size_in_gbs_parameterized = optional(string)
      shape_config_details = optional(object({
        cpu_baseline                = optional(string)
        memory_in_gbs               = optional(number)
        memory_in_gbs_parameterized = optional(string)
        ocpus                       = optional(number)
        ocpus_parameterized         = optional(string)
      }))
      shape_name = string
      subnet_id  = optional(string)
    }))
    log_configuration_override_details = optional(object({
      enable_auto_log_creation = optional(bool)
      enable_logging           = optional(bool)
      log_group_id             = optional(string)
      log_id                   = optional(string)
    }))
    step_override_details = optional(list(object({
      step_configuration_details = object({
        command_line_arguments     = optional(string)
        environment_variables      = optional(map(string))
        maximum_runtime_in_minutes = optional(string)
      })
      step_container_configuration_details = optional(object({
        cmd                = optional(list(string))
        container_type     = string
        entrypoint         = optional(list(string))
        image              = string
        image_digest       = optional(string)
        image_signature_id = optional(string)
      }))
      step_dataflow_configuration_details = optional(object({
        configuration = optional(map(string))
        driver_shape  = optional(string)
        driver_shape_config_details = optional(object({
          memory_in_gbs               = optional(number)
          memory_in_gbs_parameterized = optional(string)
          ocpus                       = optional(number)
          ocpus_parameterized         = optional(string)
        }))
        executor_shape = optional(string)
        executor_shape_config_details = optional(object({
          memory_in_gbs               = optional(number)
          memory_in_gbs_parameterized = optional(string)
          ocpus                       = optional(number)
          ocpus_parameterized         = optional(string)
        }))
        logs_bucket_uri      = optional(string)
        num_executors        = optional(number)
        warehouse_bucket_uri = optional(string)
      }))
      step_infrastructure_configuration_details = optional(object({
        block_storage_size_in_gbs               = number
        block_storage_size_in_gbs_parameterized = optional(string)
        shape_config_details = optional(object({
          cpu_baseline                = optional(string)
          memory_in_gbs               = optional(number)
          memory_in_gbs_parameterized = optional(string)
          ocpus                       = optional(number)
          ocpus_parameterized         = optional(string)
        }))
        shape_name = string
        subnet_id  = optional(string)
      }))
      step_name = string
      step_storage_mount_configuration_details_list = optional(list(object({
        bucket                     = optional(string)
        destination_directory_name = string
        destination_path           = optional(string)
        export_id                  = optional(string)
        mount_target_id            = optional(string)
        namespace                  = optional(string)
        prefix                     = optional(string)
        storage_type               = string
      })))
    })))
    storage_mount_configuration_override_details_list = optional(list(object({
      bucket                     = optional(string)
      destination_directory_name = string
      destination_path           = optional(string)
      export_id                  = optional(string)
      mount_target_id            = optional(string)
      namespace                  = optional(string)
      prefix                     = optional(string)
      storage_type               = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_pipeline_runs : (
        v.configuration_override_details == null || (contains([for v in ["DEFAULT"] : lower(v)], lower(v.configuration_override_details.type)))
      )
    ])
    error_message = "must be one of: \"DEFAULT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_pipeline_runs : (
        v.step_override_details == null || alltrue([for item in v.step_override_details : (item.step_container_configuration_details == null || (contains([for v in ["OCIR_CONTAINER"] : lower(v)], lower(item.step_container_configuration_details.container_type))))])
      )
    ])
    error_message = "must be one of: \"OCIR_CONTAINER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_pipeline_runs : (
        v.step_override_details == null || alltrue([for item in v.step_override_details : (item.step_storage_mount_configuration_details_list == null || alltrue([for item in item.step_storage_mount_configuration_details_list : (contains([for v in ["FILE_STORAGE", "OBJECT_STORAGE"] : lower(v)], lower(item.storage_type)))]))])
      )
    ])
    error_message = "must be one of: \"FILE_STORAGE\", \"OBJECT_STORAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_pipeline_runs : (
        v.storage_mount_configuration_override_details_list == null || alltrue([for item in v.storage_mount_configuration_override_details_list : (contains([for v in ["FILE_STORAGE", "OBJECT_STORAGE"] : lower(v)], lower(item.storage_type)))])
      )
    ])
    error_message = "must be one of: \"FILE_STORAGE\", \"OBJECT_STORAGE\""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

