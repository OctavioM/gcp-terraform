# **Terraform GCP Setup **  

## **⚙️ Prerequisites**
### **Install the following:**
✅ [Terraform](https://developer.hashicorp.com/terraform/downloads)  
✅ [Google Cloud SDK (gcloud)](https://cloud.google.com/sdk/docs/install)  
✅ A Google Cloud Project with billing enabled  

### **Authenticate with Google Cloud**
Run the following command to authenticate Terraform:
```sh
gcloud auth application-default login
```

## **🚀 How to Use**
### **1️⃣ Initialize Terraform**
Run this once to download provider plugins and set up the working directory:
```sh
terraform init
```

### **2️⃣ Set Your Variables**
Edit the `terraform.tfvars` file (**do not commit this file**) and set your GCP project details:
```hcl
project_id = "your-gcp-project-id"
region     = "us-central1"
```

### **3️⃣ Plan the Deployment**
Preview the changes Terraform will make:
```sh
terraform plan
```

### **4️⃣ Apply the Changes**
Deploy the configuration to GCP:
```sh
terraform apply
```

### **5️⃣ Check Outputs**
After deployment, Terraform will output the service account email:
```sh
terraform output
```

## **🔄 Reusing the Service Account Module**
The `service-account` module can be reused in other projects by calling it like this:
```hcl
module "new_service_account" {
  source               = "./modules/service-account"
  project_id           = var.project_id
  service_account_name = "custom-sa"
  display_name         = "Custom Service Account"
  roles               = ["roles/editor", "roles/bigquery.admin"]
}
```


## **📌 Cleanup**
To destroy the resources and remove everything:
```sh
terraform destroy
```
