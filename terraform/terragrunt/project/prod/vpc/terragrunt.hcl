terraform { 
    source = "../../../modules/vpc"
}

include "root" {
    path = find_in_parent_folders()
}

include "env" {
    path = find_in_parent_folders("env.hcl")
    expose = true 
    merge_strategy = "no_merge"
}

inputs = {
  env             = include.env.locals.env
  azs             = ["eu-west-3a", "eu-west-3b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

}