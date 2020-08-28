
output "healthhubplatform_vpc_azs" {
  value = module.healthhubplatform-vpc.azs
}
output "healthhubplatform_vpc_vpc_cidr_block" {
  value = module.healthhubplatform-vpc.vpc_cidr_block
}
output "healthhubplatform_vpc_vpc_id" {
  value = module.healthhubplatform-vpc.vpc_id
}
output "healthhubplatform_vpc_private_subnets" {
  value = module.healthhubplatform-vpc.private_subnets
}
output "healthhubplatform_vpc_private_subnets_cidr_blocks" {
  value = module.healthhubplatform-vpc.private_subnets_cidr_blocks
}
output "healthhubplatform_vpc_public_subnets" {
  value = module.healthhubplatform-vpc.public_subnets
}
output "healthhubplatform_vpc_public_subnets_cidr_blocks" {
  value = module.healthhubplatform-vpc.public_subnets_cidr_blocks
}
output "healthhubplatform_eks_cluster_id" {
  value = aws_eks_cluster.healthhubplatform.id
}
output "healthhubplatform_eks_cluster_name" {
  value = aws_eks_cluster.healthhubplatform.name
}e
