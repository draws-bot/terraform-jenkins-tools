data "aws_ami" "ami_info" {
  most_recent = true

  owners = ["973714476881"]
    
  filter {
     name   = "name"
     values = ["RHEL-9-DevOps-Practice"]
   }

   filter {
      name   = "virtualization-type"
     values = ["hvm"]
    }

    filter {
      name = "root-device-type"
      values = ["ebs"]
    }
} 

data "aws_ami" "nexus_ami_info" {

    most_recent = true
    owners = ["679593333241"]

    filter {
        name   = "name"
        values = ["SolveDevOps-Nexus-Server-Ubuntu24.04-20250222-*"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
