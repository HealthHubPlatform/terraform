variable "eks_cluster_name" {
  description = "the name of your stack, e.g. \"demo\""
  default     = "healthhubplatform"
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
  default     = "dev"
}

variable "region" {
  description = "the AWS region in which resources are created, you must set the availability_zones variable as well if you define this value to something other than the default"
  default     = "us-east-1"
}

variable "kubeconfig_path" {
  description = "Path where the config file for kubectl should be written to"
  default     = "/tmp"
}