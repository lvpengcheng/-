provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "Rtbm:AP-SEOUL-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaak4klpg73f7y5cbageuaaineeh7yz46ts3crd4gpqj7zybznduesa"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-seoul-1.aaaaaaaavvn2lhq3xstwq35r24se4jijlclpvch6bna7wvgczuekrhtjsyka"
	}
	display_name = "instance-20220429-1102"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBRr/Ql5GTzYUH/t21bPT8iuwdj30SIa1wp5s+mjo+lDO7AHAi+FDHHQhPgAgAKWR3cP6hrtDTDbYFTIHKJc5Ml5C0i6oSUaj7WX+94CTGrdzmSn2scAsc3U+sCRjMPPgf8feXW0gJjK3N1OyrCeUVk50ruSzST07+++xz6cjki1wfAIRt2o3YlRcx4zTJW2R4OMrqzFUIRTyKdFWSTH81P6nBrscOuR8/gBq/LD7J2UUjlg3Q12GOjGt2Ab7XG0eDtqMlP8Vs2ha0IoLIZbeh4ffaKk1kZlZw4I2dRncEQvxd/h2cdBUcAn165YWleAYHa97Pfr+d7qWr2n4SdI3H rsa-key-20211129"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-seoul-1.aaaaaaaa52x2garm5fzzld57bf7y3i373quh4pflkjrcgwsbbtkhbh2hy4ya"
		source_type = "image"
	}
}
