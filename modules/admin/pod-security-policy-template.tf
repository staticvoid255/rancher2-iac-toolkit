# Create a new rancher2 PodSecurityPolicyTemplate
# TODO: create templates for dev, test and prod
resource "rancher2_pod_security_policy_template" "foo" {
  name = "foo"
  description = "Terraform PodSecurityPolicyTemplate acceptance test - update"
  allow_privilege_escalation = false
  allowed_csi_driver {
    name = "something"
  }
  allowed_csi_driver {
    name = "something-else"
  }
  allowed_flex_volume {
    driver = "something"
  }
  allowed_flex_volume {
    driver = "something-else"
  }
  allowed_host_path {
    path_prefix = "/"
    read_only = true
  }
  allowed_host_path {
    path_prefix = "//"
    read_only = false
  }
  allowed_proc_mount_types = ["Default"]
  default_allow_privilege_escalation = false
  fs_group {
    rule = "MustRunAs"
    range {
      min = 0
      max = 100
    }
    range {
      min = 0
      max = 100
    }
  }
  host_ipc = false
  host_network = false
  host_pid = false
  host_port {
    min = 0
    max = 65535
  }
  host_port {
    min = 1024
    max = 8080
  }
  privileged = false
  read_only_root_filesystem = false
  required_drop_capabilities = ["something"]

  run_as_user {
    rule = "MustRunAs"
    range {
      min = 1
      max = 100
    }
    range {
      min = 2
      max = 1024
    }
  }
  run_as_group {
    rule = "MustRunAs"
    range {
      min = 1
      max = 100
    }
    range {
      min = 2
      max = 1024
    }
  }
  runtime_class {
    default_runtime_class_name = "something"
    allowed_runtime_class_names  = ["something"]
  }
  se_linux {
    rule = "RunAsAny"
  }
  supplemental_group {
    rule = "RunAsAny"
  }
  volumes = ["azureFile"]
}