# 🌐 AzureRM Terraform Infrastructure

Deploying infrastructure on Microsoft Azure using Terraform modules! This project uses a modular design to manage Azure resources efficiently.

---

## 📂 Repository Directory Structure

```text
Azurerm-terraform-infrastructure-/
├── 📁 enviroment/
│   └── 📁 modules/
│       ├── 📁 Azurerm_resource_group/      # Module to manage Resource Groups 📂
│       ├── 📁 Azurerm_virtual_network/    # Module to manage Virtual Networks 🌐
│       └── 📁 Azurerm_subnet/             # Module to manage Subnets 🚇
└── 📁 prod/                               # Production environment configuration 🚀
    ├── 📄 main.tf                         # Main infrastructure declaration calling modules
    ├── 📄 provider.tf                     # Azure Provider settings
    ├── 📄 terraform.tfvars                # Input values/variables for production
    ├── 📄 variable.tf                     # Input variables definition
    └── 📄 .terraform.lock.hcl
```

---

## 🛠️ Modules Included

*   **📂 Resource Group (`Azurerm_resource_group`)**: Deploys the container hosting your Azure resources.
*   **🌐 Virtual Network (`Azurerm_virtual_network`)**: Sets up the private network space.
*   **🚇 Subnet (`Azurerm_subnet`)**: Partitions the virtual network into distinct subnets for resource isolation.

---

## 🚀 Getting Started

### 📋 Prerequisites
Before you start, make sure you have the following installed and configured:
1.  [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) (v1.0.0+) 🛠️
2.  [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) ☁️
3.  An active Azure Subscription 💳

### 🔑 Authentication
Login to your Azure account using the Azure CLI:
```bash
az login
```

### 🏁 Deployment Steps
Navigate to the production directory:
```bash
cd prod
```

1.  **Initialize Terraform** 📥:
    ```bash
    terraform init
    ```
2.  **Generate Execution Plan** 📋:
    ```bash
    terraform plan
    ```
3.  **Apply Configuration** ⚡:
    ```bash
    terraform apply
    ```

---

## 🛡️ Best Practices
*   **Module Reusability**: All components are structured as reusable modules under the `enviroment/modules` directory.
*   **Strict Dependencies**: Explicit `depends_on` rules ensure sequential creation (`Resource Group` ➡️ `Virtual Network` ➡️ `Subnet`).