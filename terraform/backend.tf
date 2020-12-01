terraform {
  backend "s3" {
    bucket               = "lovebonito-tfstate-2"
    encrypt              = true
    key                  = "lovebonito-eks"
    region               = "ap-southeast-1"
  }
}
