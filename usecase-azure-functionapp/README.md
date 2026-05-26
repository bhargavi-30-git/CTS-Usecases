# 🚀 Azure Function App Deployment using Azure DevOps CI/CD Pipelines

## 📖 Overview

This project demonstrates the deployment of a .NET Azure Function App using Azure DevOps CI/CD pipelines and Terraform infrastructure automation.

The implementation includes:
- Azure Function App deployment
- Infrastructure provisioning using Terraform
- CI/CD automation using Azure DevOps
- Serverless application hosting
- Automated deployment workflows
- Unit testing integration

---

# 🛠️ Technologies Used

- Azure Function App
- Azure DevOps
- Terraform
- .NET
- C#
- Azure Pipelines
- xUnit Testing Framework

---

# 📂 Project Structure

```bash
usecase-azure-functionapp/
│
├── infra/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── src/
│   ├── host.json
│   ├── HttpTriggerFunction.cs
│   ├── MyFunctionApp.csproj
│   └── Program.cs
│
├── tests/
│   ├── HttpTriggerFunctionTests.cs
│   └── MyFunctionApp.Tests.csproj
│
├── azure-pipelines.yml
├── terraform-pipeline.yml
├── .gitignore
└── README.md
```

---

# ⚙️ Features

✅ Azure Function App deployment  
✅ Serverless .NET application hosting  
✅ Infrastructure provisioning using Terraform  
✅ CI/CD automation using Azure DevOps  
✅ Automated deployment workflows  
✅ Unit testing integration  
✅ Infrastructure as Code (IaC) implementation  

---

# ☁️ Azure Services Used

## Azure Function App
Used for:
- Hosting serverless applications
- Event-driven execution
- Scalable cloud processing

## Azure DevOps
Used for:
- Source code management
- Build pipelines
- Release automation
- CI/CD workflows

---

# 🏗️ Terraform Infrastructure

Terraform is used to provision Azure infrastructure resources.

## Infrastructure Files

### `main.tf`
Defines Azure resources and Function App infrastructure.

### `variables.tf`
Contains reusable infrastructure variables.

### `outputs.tf`
Defines deployment output values.

Infrastructure folder:

```bash
infra/
```

---

# ⚙️ Azure Function Application

The Azure Function App is developed using .NET and C#.

Main application files:

```bash
src/HttpTriggerFunction.cs
src/Program.cs
src/host.json
```

---

# 🔗 Function Workflow

1. HTTP request triggers Azure Function.
2. Function processes incoming request.
3. Response is generated dynamically.
4. Azure Function App handles execution automatically.

---

# 🧪 Unit Testing

Unit tests are implemented for validating Azure Function behavior.

Test files:

```bash
tests/HttpTriggerFunctionTests.cs
tests/MyFunctionApp.Tests.csproj
```

Testing ensures:
- Function execution validation
- Response verification
- Application reliability

---

# 🔄 CI/CD Pipeline Workflow

## Azure DevOps Pipeline

The pipeline automates:

1. Source code validation
2. Build process
3. Test execution
4. Infrastructure provisioning
5. Azure Function deployment

Pipeline files:

```bash
azure-pipelines.yml
terraform-pipeline.yml
```

---

# 🚀 Deployment Workflow

1. Developer pushes code to repository
2. Azure DevOps pipeline gets triggered
3. Terraform provisions Azure infrastructure
4. .NET application builds successfully
5. Unit tests execute
6. Azure Function App deployment completes
7. Function becomes accessible in Azure cloud

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
cd usecase-azure-functionapp
```

---

## Initialize Terraform

```bash
cd infra
terraform init
```

---

## Apply Infrastructure

```bash
terraform apply
```

---

## Build the Function App

```bash
cd ../src
dotnet build
```

---

## Run the Function App Locally

```bash
func start
```

---

# 🎯 Learning Outcomes

This project demonstrates:
- Azure Function App deployment
- Serverless architecture
- Terraform automation
- Azure DevOps CI/CD implementation
- Infrastructure as Code
- Automated testing workflows

---

# 📌 Key Concepts Covered

- Azure Function Apps
- Azure DevOps Pipelines
- Terraform Automation
- CI/CD Workflows
- Serverless Computing
- Infrastructure as Code
- Unit Testing

---

# 📄 License

This project is created for learning and internship purposes.