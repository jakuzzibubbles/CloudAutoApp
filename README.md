# Table of Content

1. **Project Overview**
2. **Prerequisites**
3. **Setup and Installation**
4. **Usage**
5. **Terraform Infrastructure**
6. **Python App**
7. **Running the Docker Container**

# CloudAutoApp

## Project Overview

**CloudAutoApp** is a project that automates the provisioning of AWS infrastructure and deploys a simple Python Flask application using Docker. It leverages Terraform to manage AWS resources such as VPC, subnets, NAT gateway, EC2 instances, and RDS. The Python app is containerized with Docker and runs on EC2 instances.

## Prerequisites

- **Terraform**: [Install Terraform](https://www.terraform.io/downloads.html) (version 1.0 or higher)
- **Docker**: [Install Docker](https://docs.docker.com/get-docker/) (version 20.10 or higher)
- **AWS CLI**: [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- **Python**: [Install Python](https://www.python.org/downloads/) (version 3.9 or higher)

## Setup and Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/jakuzzibubbles/CloudAutoApp.git
   cd CloudAutoApp
   ```

2. **Initialize Terraform**

   ```bash
   terraform init
   ```

3. **Review the Terraform Plan**

   ```bash
   terraform plan -out=terraform_plan.out
   ```

4. **Apply the Terraform Configuration**

   ```bash
   terraform apply terraform_plan.out
   ```

## Usage

### Python App

The Python Flask app is located in the `app/` directory. It is containerized with Docker and can be run using Docker commands.

### Running the Docker Container

1. **Navigate to the `app/` directory**

   ```bash
   cd app/
   ```

2. **Build the Docker Image**

   ```bash
   docker build -t python-app .
   ```

3. **Run the Docker Container**

   ```bash
   docker run -d -p 80:80 python-app
   ```

## Terraform Infrastructure

The Terraform configuration files are located in the root of the repository. They set up the following AWS resources:

- VPC
- Public and private subnets
- NAT Gateway
- EC2 instances
- RDS instance
- Security groups

For detailed information on each resource, refer to the `main.tf`, `provider.tf`, `variables.tf`, and other Terraform files.

## Python App

The Python Flask application is a simple web server that returns "Hello, World from Flask app running on EC2!" when accessed.

### Files:

- **`app.py`**: The main Python application file.
- **`Dockerfile`**: Docker configuration for building the image.
- **`requirements.txt`**: Python dependencies.

## Running the Docker Container

The `run_docker.sh` script automates the process of building and running the Docker container.

1. **Make the script executable**

   ```bash
   chmod +x app/run_docker.sh
   ```

2. **Run the script**

   ```bash
   ./app/run_docker.sh
   ```


