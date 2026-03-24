variable "environment" {
    description = "Enviornment name"
    type=string
}

variable "bucket_name" {
    description = "list of bucket names"
    type = list(string)
}