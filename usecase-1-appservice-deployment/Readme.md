# 🚀 Use Case 1 — Deployment of Web Application to Azure App Services using Azure DevOps CI/CD Pipelines

## 📖 Overview

This use case demonstrates the deployment of a static web application to Azure App Services (PaaS) using Azure DevOps CI/CD pipelines and Infrastructure as Code (Terraform).

The implementation includes:
- Azure App Service provisioning
- Infrastructure automation using Terraform
- CI/CD pipeline creation using Azure DevOps
- Docker containerization
- Nginx web server configuration
- Automated deployment workflow

---

# 🛠️ Technologies Used

- Azure App Services
- Azure DevOps
- Terraform
- Docker
- Nginx
- HTML
- YAML Pipelines

---

# 📂 Project Structure

```bash
usecase-1-appservice-deployment/
│
├── frontend/
│   └── index.html
│
├── terraform/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── azure-pipelines.yml
├── Dockerfile
├── nginx.conf
├── .gitignore
└── README.md
```

---

# ⚙️ Features

✅ Infrastructure provisioning using Terraform  
✅ Azure App Service deployment  
✅ CI/CD automation using Azure DevOps  
✅ Docker-based container deployment  
✅ Nginx web server configuration  
✅ Automated build and deployment workflow  

---

# ☁️ Azure Services Used

## Azure App Service
Used to host and deploy the web application in a Platform-as-a-Service (PaaS) environment.

## Azure DevOps
Used for:
- Source code management
- Build pipelines
- Release pipelines
- Continuous Integration & Continuous Deployment

---

# 🏗️ Infrastructure as Code (Terraform)

Terraform is used to automate Azure resource provisioning.

## Terraform Files

### `main.tf`
Defines Azure infrastructure resources.

### `variables.tf`
Contains reusable input variables.

### `outputs.tf`
Defines output values after deployment.

---

# 🔄 CI/CD Pipeline Workflow

## Continuous Integration (CI)

The build pipeline performs:
1. Source code retrieval
2. Build validation
3. Docker image creation
4. Artifact generation

---

## Continuous Deployment (CD)

The release pipeline performs:
1. Deployment to Azure App Service
2. Container startup
3. Application availability verification

---

# 🐳 Docker Configuration

Docker is used for containerizing the web application.

## Docker Responsibilities
- Package application dependencies
- Create portable deployment image
- Simplify deployment consistency

---

# 🌐 Nginx Configuration

Nginx acts as the web server for serving the application.

Configured using:

```bash
nginx.conf
```

---

# 🚀 Deployment Workflow

1. Developer pushes code to Azure Repos
2. Azure DevOps pipeline gets triggered
3. Terraform provisions infrastructure
4. Docker image is built
5. Application is deployed to Azure App Service
6. Nginx serves the application
7. Application becomes publicly accessible

---

# 📋 Prerequisites

Before running the project, ensure:

- Azure Subscription available
- Azure DevOps account configured
- Terraform installed
- Docker installed
- Azure CLI installed

---

# ▶️ How to Run

## Clone Repository

```bash
git clone <repository-url>
```

---

## Navigate to Project

```bash
cd usecase-1-appservice-deployment
```

---

## Initialize Terraform

```bash
cd terraform
terraform init
```

---

## Validate Terraform

```bash
terraform validate
```

---

## Apply Infrastructure

```bash
terraform apply
```

---

# 🎯 Learning Outcomes

This use case demonstrates:
- Azure cloud deployment
- Infrastructure as Code
- CI/CD implementation
- DevOps automation
- Docker containerization
- Azure App Service deployment

---

# 📌 Key Concepts Covered

- Azure PaaS Deployment
- Azure DevOps Pipelines
- Terraform Automation
- Docker Containers
- Infrastructure Provisioning
- Continuous Integration
- Continuous Deployment

---

# 📄 License

This project is created for learning and internship purposes.