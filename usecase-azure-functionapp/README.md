# 🚀 Deployment of .NET Application to Azure Function App using Azure DevOps CI/CD Pipelines

## 📖 Overview

This project demonstrates the deployment of a .NET application to Azure Function App using Azure DevOps CI/CD pipelines and Terraform infrastructure automation.

The implementation focuses on:
- Azure Function App deployment
- CI/CD automation using Azure DevOps
- Infrastructure provisioning using Terraform
- Automated build and deployment workflows
- Serverless cloud application deployment

---

# 🛠️ Technologies Used

- Azure Function App
- Azure DevOps
- Terraform
- .NET
- Azure Pipelines
- YAML

---

# 📂 Project Structure

```bash
azure-functionapp-cicd/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── azure-pipelines.yml
├── FunctionApp/
├── README.md
└── configuration files
```

---

# ⚙️ Features

✅ Deployment of .NET application to Azure Function App  
✅ CI/CD pipeline automation using Azure DevOps  
✅ Infrastructure provisioning using Terraform  
✅ Automated deployment workflow  
✅ Serverless application hosting  
✅ Azure cloud integration  

---

# ☁️ Azure Services Used

## Azure Function App
Used for:
- Hosting serverless .NET applications
- Event-driven execution
- Scalable cloud processing

## Azure DevOps
Used for:
- Source control
- Build pipelines
- Release pipelines
- CI/CD automation

---

# 🏗️ Terraform Infrastructure

Terraform is used to automate Azure infrastructure provisioning.

Main Terraform responsibilities:
- Resource creation
- Azure Function App setup
- Infrastructure automation
- Deployment configuration

---

# 🔄 CI/CD Workflow

## Continuous Integration

Pipeline automates:
1. Source code validation
2. Build process
3. Artifact generation

---

## Continuous Deployment

Pipeline automates:
1. Azure Function App deployment
2. Infrastructure deployment
3. Release automation

---

# 🚀 Deployment Workflow

1. Developer pushes code to repository
2. Azure DevOps pipeline gets triggered
3. Terraform provisions Azure resources
4. .NET application builds successfully
5. Azure Function App deployment executes
6. Application becomes available in Azure cloud

---

# 📋 Prerequisites

Before running the project:

- Azure Subscription
- Azure DevOps Account
- Terraform Installed
- Azure CLI Installed
- .NET SDK Installed

---

# ▶️ How to Run

## Clone Repository

```bash
git clone <repository-url>
```

---

## Navigate to Project

```bash
cd azure-functionapp-cicd
```

---

## Initialize Terraform

```bash
cd terraform
terraform init
```

---

## Apply Infrastructure

```bash
terraform apply
```

---

## Run CI/CD Pipeline

Use Azure DevOps pipeline configuration to:
- Build application
- Deploy Azure Function App
- Automate releases

---

# 🎯 Learning Outcomes

This project demonstrates:
- Azure Function App deployment
- Serverless architecture
- CI/CD automation
- Terraform infrastructure provisioning
- Azure DevOps integration
- Cloud-native deployment workflows

---

# 📌 Key Concepts Covered

- Azure Function Apps
- Azure DevOps Pipelines
- Terraform Automation
- CI/CD Workflows
- Serverless Computing
- Infrastructure as Code

---

# 📄 License

This project is created for learning and internship purposes.