# 🚀 Azure VM Web Application Deployment using Azure DevOps CI/CD Pipelines

## 📖 Overview

This project demonstrates the deployment of a web application to an Azure Virtual Machine (VM) using Azure DevOps CI/CD pipelines and Terraform infrastructure automation.

The implementation includes:
- Azure VM provisioning using Terraform
- Web application deployment
- CI pipeline automation using Azure DevOps
- Infrastructure as Code (IaC)
- Automated deployment workflow

---

# 🛠️ Technologies Used

- Azure Virtual Machine (VM)
- Azure DevOps
- Terraform
- Node.js
- JavaScript
- HTML
- YAML Pipelines

---

# 📂 Project Structure

```bash
usecase-azure-vm-webapp-deployment/
│
├── app/
│   ├── app.js
│   └── index.html
│
├── terraform/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── azure-pipelines-ci.yml
├── .gitignore
└── README.md
```

---

# ⚙️ Features

✅ Azure VM provisioning using Terraform  
✅ Web application deployment to Azure VM  
✅ CI pipeline automation using Azure DevOps  
✅ Infrastructure as Code implementation  
✅ Automated deployment workflow  
✅ Node.js web application hosting  

---

# ☁️ Azure Services Used

## Azure Virtual Machine (VM)
Used for:
- Hosting the web application
- Deployment environment setup
- Cloud infrastructure management

## Azure DevOps
Used for:
- Source code management
- CI pipeline automation
- Build validation
- Deployment workflows

---

# 🏗️ Terraform Infrastructure

Terraform is used to automate Azure infrastructure provisioning.

## Terraform Files

### `main.tf`
Defines Azure VM infrastructure resources.

### `variables.tf`
Contains reusable infrastructure variables.

### `outputs.tf`
Defines deployment output values.

---

# 🌐 Web Application

The project includes a simple web application built using:
- HTML
- JavaScript
- Node.js

Main application files:

```bash
app/app.js
app/index.html
```

---

# 🔄 CI/CD Pipeline Workflow

The Azure DevOps CI pipeline automates:

1. Source code retrieval
2. Build validation
3. Infrastructure provisioning
4. Deployment preparation
5. Web application deployment

Pipeline file:

```bash
azure-pipelines-ci.yml
```

---

# 🚀 Deployment Workflow

1. Developer pushes code to repository
2. Azure DevOps pipeline gets triggered
3. Terraform provisions Azure VM infrastructure
4. Application deployment process executes
5. Web application gets hosted on Azure VM
6. Application becomes accessible through VM endpoint

---

# 📋 Prerequisites

Before running the project:

- Azure Subscription
- Azure DevOps Account
- Terraform Installed
- Azure CLI Installed
- Node.js Installed

---

# ▶️ How to Run

## Clone Repository

```bash
git clone <repository-url>
```

---

## Navigate to Project

```bash
cd usecase-azure-vm-webapp-deployment
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

## Run Application

```bash
cd app
node app.js
```

---

# 🎯 Learning Outcomes

This project demonstrates:
- Azure VM deployment
- Terraform automation
- Infrastructure as Code
- Azure DevOps CI pipeline setup
- Web application deployment
- Cloud infrastructure provisioning

---

# 📄 License

This project is created for learning and internship purposes.