module "vpc" {
  source     = "../../"
  cidr_block = "10.255.0.0/16"
  name       = "example"

  public_subnet_cidr_blocks  = ["10.255.0.0/24", "10.255.1.0/24"]
  public_availability_zones  = ["us-east-1a", "us-east-1c"]
  private_subnet_cidr_blocks = ["10.255.64.0/24", "10.255.65.0/24"]
  private_availability_zones = ["us-east-1a", "us-east-1c"]
}