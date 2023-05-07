# Terraform Modules AWS Wordpress Deployment

An automated process to provision a high-availability Wordpress environment on AWS using Terraform, featuring ECS, ASG, ALB, VPC, RDS, and Route53.

## Table of Contents

- [Features](#features)
- [Modules](#modules)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)


## Features

- Provisions a high-availability Wordpress environment on AWS
- Utilizes ECS, ASG, ALB, VPC, RDS, and Route53
- Organized into reusable Terraform modules for better maintainability and reusability
- Stores database environment variables in AWS Parameter Store, including password
- Github Actions pipelines for environment provisioning and destruction

## Modules

The Terraform code in this project is organized into reusable modules. These modules help maintain a clean and modular project structure, making it easier to manage, update, and reuse the code.

Below is a brief description of each module:

1. `vpc-module`: This module creates a VPC, internet gateway, public and private subnets, route tables, NAT gateway, and elastic IP.
2. `database-module`: This module creates an RDS cluster and stores all parameters in AWS SSM (Parameter Store).
3. `ecs-module`: This module creates an Application Load Balancer (ALB) with target groups, a validated SSL certificate, and a Route53 record. It also creates an Auto Scaling Group and an ECS service with task definitions using a Wordpress image.

To use the modules, simply reference them in your Terraform configuration files and provide the required input variables.

The entire environment is provisioned following AWS security best practices


## Requirements

- Terraform installed
- An AWS account with appropriate access keys and permissions
- A Github account to access Github Actions


## Usage

1. Configure your AWS credentials and environment in GitHub Secrets.
2. Use the Github Actions pipeline to provision the AWS environment. The pipeline is available in the Actions tab of the repository.
3. To destroy the AWS environment, use the separate Github Actions pipeline designed for this purpose. This pipeline is also available in the Actions tab of the repository.

_Note: For production environments, it is recommended to store the database password in AWS Secrets Manager._

## Contributing

Contributions are welcome. To contribute, please follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/YourFeature`)
5. Open a Pull Request
