locals {
  # We consolidate the nested JSON into a flat list for easier resource looping
  compliance_findings = [
    {
      standard_id   = "c9056ac2-0ccc-4157-80e8-77572367378e"
      standard_name = "HIPAA"
      control_id    = "00664129-9e9d-422a-9ef5-04bb4ea1833f"
      control_name  = "164.312(e)(2)(ii)"
      description   = "Encryption of ePHI"
    },
    {
      standard_id   = "33242a41-f22e-4b70-808d-e4b2c69f3653"
      standard_name = "GDPR"
      control_id    = "0fa1abcc-e6f9-4663-8c99-8401b4bf4703"
      control_name  = "Article 76"
      description   = "Confidentiality"
    },
    {
      standard_id   = "e7307780-b4ec-442c-a82e-88f71f8e6e5d"
      standard_name = "NIST CSF v2.0"
      control_id    = "57705814-e4a3-4524-8ccf-ebb671628dd6"
      control_name  = "PR.DS-01"
      description   = "Data-at-rest protection"
    }
    # ... Add other controls here following the same pattern
  ]
}

# Example: Using the map to create a generic 'null_resource' 
# or custom provider resource to log these findings.
resource "null_resource" "compliance_audit_log" {
  for_each = { for inst in local.compliance_findings : "${inst.standard_name}-${inst.control_name}" => inst }

  triggers = {
    standard_name = each.value.standard_name
    control_id    = each.value.control_id
    definition    = each.value.description
  }

  provisioner "local-exec" {
    command = "echo 'Finding created for ${each.value.standard_name}: ${each.value.control_name}'"
  }
}
