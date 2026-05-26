# 🚀 Fullstack Application Deployment using Azure App Service

## 📖 Overview

This project demonstrates the deployment of a fullstack application using Azure cloud services, Docker containers, Azure DevOps CI/CD pipelines, and Terraform infrastructure automation.

The implementation includes:
- Frontend application deployment
- Backend API deployment
- Frontend → Backend connectivity
- Backend → Storage/API integration
- Docker containerization
- Azure App Service hosting
- CI/CD pipeline automation
- Infrastructure provisioning using Terraform

---

# 🛠️ Technologies Used

- Azure App Service
- Azure DevOps
- Terraform
- Docker
- Nginx
- ASP.NET Core Web API
- HTML
- YAML Pipelines

---

# 📂 Project Structure

```bash
usecase-fullstack-appservice/
│
├── BackendApi/
│   ├── Dockerfile
│   ├── Program.cs
│   └── azure-pipelines.yml
│
├── FrontendApp/
│   ├── Dockerfile
│   ├── index.html
│   ├── nginx.conf
│   └── azure-pipelines.yml
│
├── terraform/
│   └── main.tf
│
├── azure-pipelines.yml
└── README.md
```

---

# ⚙️ Features

✅ Frontend deployment to Azure App Service  
✅ Backend API deployment  
✅ Frontend to backend communication  
✅ Docker containerization  
✅ Infrastructure provisioning using Terraform  
✅ CI/CD automation using Azure DevOps  
✅ Nginx web server configuration  

---

# ☁️ Azure Services Used

## Azure App Service
Used for hosting:
- Frontend application
- Backend API

## Azure DevOps
Used for:
- Source code management
- Build pipelines
- Deployment pipelines
- CI/CD automation

---

# 🐳 Docker Implementation

Both frontend and backend applications are containerized using Docker.

## Frontend Docker
Configured using:

```bash
FrontendApp/Dockerfile
```

## Backend Docker
Configured using:

```bash
BackendApi/Dockerfile
```

---

# 🌐 Frontend Application

The frontend application includes:
- Static web application
- Nginx configuration
- API communication with backend

Main files:

```bash
FrontendApp/index.html
FrontendApp/nginx.conf
```

---

# ⚙️ Backend API

Backend service implemented using ASP.NET Core Web API.

Main file:

```bash
BackendApi/Program.cs
```

Responsibilities:
- Handle API requests
- Process application logic
- Provide backend services to frontend

---

# 🏗️ Terraform Infrastructure

Infrastructure provisioning automated using Terraform.

Main Terraform configuration:

```bash
terraform/main.tf
```

Used for:
- Azure resource provisioning
- App Service deployment setup
- Infrastructure automation

---

# 🔄 CI/CD Pipeline Workflow

## Continuous Integration

Pipeline automates:
1. Source code validation
2. Docker image build
3. Artifact preparation

---

## Continuous Deployment

Pipeline automates:
1. Azure deployment
2. Container deployment
3. Application release

Pipeline files:

```bash
azure-pipelines.yml
FrontendApp/azure-pipelines.yml
BackendApi/azure-pipelines.yml
```

---

# 🚀 Application Workflow

```text
Frontend Application
        ↓
Backend API
        ↓
Azure Services / Storage
```

---

# 📋 Prerequisites

Before running the project:

- Azure Subscription
- Azure DevOps Account
- Docker Installed
- Terraform Installed
- Azure CLI Installed

---

# ▶️ Deployment Steps

## Clone Repository

```bash
git clone <repository-url>
```

---

## Navigate to Project

```bash
cd usecase-fullstack-appservice
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

## Build Docker Containers

Frontend:

```bash
docker build -t frontend-app ./FrontendApp
```

Backend:

```bash
docker build -t backend-api ./BackendApi
```

---

# 🎯 Learning Outcomes

This project demonstrates:
- Fullstack cloud deployment
- Azure App Service hosting
- Docker containerization
- CI/CD implementation
- Infrastructure as Code
- Frontend-backend integration
- DevOps automation

---

# 📌 Key Concepts Covered

- Azure App Service
- Docker Containers
- Azure DevOps Pipelines
- Terraform Automation
- Fullstack Deployment
- CI/CD Workflows
- ASP.NET Core API

---

# 📄 License

This project is created for learning and internship purposes.