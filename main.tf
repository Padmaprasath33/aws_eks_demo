module "vpc" {
    source  = "git::https://github.com/Padmaprasath33/aws_eks_network_module?ref=main"
    vpc_name       = var.vpc_name
    vpc_cidr_block = var.vpc_cidr_block
    #vpc_availability_zones = ["us-east-1a", "us-east-1b"]
    vpc_public_subnets     = var.vpc_public_subnets
    vpc_private_subnets    = var.vpc_private_subnets
    vpc_enable_nat_gateway = var.vpc_enable_nat_gateway
    vpc_single_nat_gateway = var.vpc_single_nat_gateway

}

module "eks" {
    source  = "git::https://github.com/Padmaprasath33/aws_eks_module?ref=main"
    cluster_name              = var.cluster_name
    cluster_service_ipv4_cidr = var.cluster_service_ipv4_cidr
    #cluster_service_ipv4_cidr = "196.182.32.48/32"
    cluster_version                      = var.cluster_version
    cluster_endpoint_private_access      = var.cluster_version
    cluster_endpoint_public_access       = var.cluster_endpoint_public_access
    cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs
}