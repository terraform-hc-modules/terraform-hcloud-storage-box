provider "hcloud" {
  token = "dummy"
}

run "invalid_storage_box_type_fails" {
  command = plan

  variables {
    create           = false
    name             = "test"
    storage_box_type = "bx00"
    location         = "fsn1"
    password         = "ExamplePassword123!"
  }

  expect_failures = [var.storage_box_type]
}

run "invalid_location_fails" {
  command = plan

  variables {
    create           = false
    name             = "test"
    storage_box_type = "bx11"
    location         = "moon1"
    password         = "ExamplePassword123!"
  }

  expect_failures = [var.location]
}

run "weak_password_fails" {
  command = plan

  variables {
    create           = false
    name             = "test"
    storage_box_type = "bx11"
    location         = "fsn1"
    password         = "short"
  }

  expect_failures = [var.password]
}

run "valid_inputs_plan_offline" {
  command = plan

  variables {
    create           = false
    name             = "test"
    storage_box_type = "bx11"
    location         = "fsn1"
    password         = "ExamplePassword123!"
  }
}

run "subaccount_plan_offline" {
  command = plan

  plan_options {
    refresh = false
  }

  module {
    source = "./modules/subaccount"
  }

  variables {
    storage_box_id = 123
    name           = "backup"
    home_directory = "backups/app"
    password       = "ExamplePassword123!"
    access_settings = {
      readonly = true
    }
  }

  assert {
    condition     = hcloud_storage_box_subaccount.this[0].home_directory == "backups/app"
    error_message = "expected the subaccount to be planned with the given home directory"
  }
}

run "subaccount_leading_slash_fails" {
  command = plan

  module {
    source = "./modules/subaccount"
  }

  variables {
    create         = false
    storage_box_id = 123
    home_directory = "/backups"
    password       = "ExamplePassword123!"
  }

  expect_failures = [var.home_directory]
}

run "subaccount_weak_password_fails" {
  command = plan

  module {
    source = "./modules/subaccount"
  }

  variables {
    create         = false
    storage_box_id = 123
    home_directory = "backups"
    password       = "short"
  }

  expect_failures = [var.password]
}

run "snapshot_plan_offline" {
  command = plan

  plan_options {
    refresh = false
  }

  module {
    source = "./modules/snapshot"
  }

  variables {
    storage_box_id = 123
    description    = "manual"
  }

  assert {
    condition     = length(hcloud_storage_box_snapshot.this) == 1
    error_message = "expected one snapshot to be planned"
  }
}

run "root_subaccounts_and_snapshots_plan_offline" {
  command = plan

  plan_options {
    refresh = false
  }

  variables {
    name     = "test"
    password = "ExamplePassword123!"

    subaccounts = {
      backup = { home_directory = "backups" }
    }
    subaccount_passwords = {
      backup = "ExampleBackupPassword123!"
    }
    snapshots = {
      initial = { description = "initial" }
    }
  }

  assert {
    condition     = keys(output.subaccounts) == ["backup"] && keys(output.snapshots) == ["initial"]
    error_message = "expected one subaccount and one snapshot keyed by input map keys"
  }
}

run "root_missing_subaccount_password_fails" {
  command = plan

  variables {
    create   = false
    name     = "test"
    password = "ExamplePassword123!"

    subaccounts = {
      backup = { home_directory = "backups" }
    }
  }

  expect_failures = [var.subaccount_passwords]
}
