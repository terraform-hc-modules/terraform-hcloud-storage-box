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

