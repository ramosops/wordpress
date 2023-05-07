# Terraform AWS Wordpress Deployment

An automated process to provision a high-availability Wordpress environment on AWS using Terraform, featuring ECS, ASG, ALB, VPC, RDS, and Route53.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)


## Features

- Provisions a high-availability Wordpress environment on AWS
- Utilizes ECS, ASG, ALB, VPC, RDS, and Route53
- Stores database environment variables in AWS Parameter Store, including password
- Github Actions pipelines for environment provisioning and destruction

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
