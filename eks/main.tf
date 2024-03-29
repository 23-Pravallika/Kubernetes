module "eks" {
    source             = "./vendor/modules/eks" 
    ENV                = var.ENV
    PRIVATE_SUBNET_IDS = data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_ID
    PUBLIC_SUBNET_IDS  = data.terraform_remote_state.vpc.outputs.PUBLIC_SUBNET_ID
    DESIRED_SIZE       = 3
    MAX_SIZE           = 3
    MIN_SIZE           = 3


}


