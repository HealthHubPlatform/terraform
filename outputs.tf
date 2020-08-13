output "remote_state_dynamodb_table" {
  value = aws_dynamodb_table.terraform_state_lock.name
}
output "remote_state_bucket" {
  value = aws_s3_bucket.terraform_state.bucket
}
output "healthhubplatform_vpc_azs" {
  value = module.healhubplatform-vpc.azs
}
output "healthhubplatform_vpc_vpc_cidr_block" {
  value = module.healhubplatform-vpc.vpc_cidr_block
}
output "healthhubplatform_vpc_vpc_id" {
  value = module.healhubplatform-vpc.vpc_id
}
output "healthhubplatform_vpc_private_subnets" {
  value = module.healhubplatform-vpc.private_subnets
}
output "healthhubplatform_vpc_private_subnets_cidr_blocks" {
  value = module.healhubplatform-vpc.private_subnets_cidr_blocks
}
output "healthhubplatform_vpc_public_subnets" {
  value = module.healhubplatform-vpc.public_subnets
}
output "healthhubplatform_vpc_public_subnets_cidr_blocks" {
  value = module.healhubplatform-vpc.public_subnets_cidr_blocks
}
output "healthhubplatform_eks_cluster_id" {
  value = aws_eks_cluster.healthhubplatform.id
}
output "healthhubplatform_eks_cluster_name" {
  value = aws_eks_cluster.healthhubplatform.name
}
