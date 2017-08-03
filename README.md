# Devops Project

This project creates a Packer image pre-baked with an nginx webserver as well as a Terraform configuration to deploy that image on AWS.

### Requirements

* AWS
  * Assumed Existing Infra:
    * VPC
    * Subnet
* Packer
* Terraform
* [packer-provisioner-goss](https://github.com/YaleUniversity/packer-provisioner-goss/)

### Quickstart

```bash
 # Build the web server image
 make build
 # Deploy the image into an autoscaling group.
 make deploy
 # Destroy AWS Infrastructure (AMI persists)
 make destroy
```
