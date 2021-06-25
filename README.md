# Hands On Terraform 


- [Hands On Terraform](#hands-on-terraform)
- [Architecture Context](#architecture-context)
  - [1 Create Your Infraestructure](#1-create-your-infraestructure)
    - [1.1 Create an S3 Bucket as a Static Website](#11-create-an-s3-bucket-as-a-static-website)
      - [1.1.1 Requirements](#111-requirements)
      - [1.1.2 Create the S3](#112-create-the-s3)
    - [1.2 Create and Deploy Azure Function App](#12-create-and-deploy-azure-function-app)
      - [1.2.1 Requirements](#121-requirements)
      - [1.2.2 Dependences:](#122-dependences)
  - [2 Deploy React App](#2-deploy-react-app)
    - [2.1 Update package.json](#21-update-packagejson)
    - [2.2 Compile and Deploy](#22-compile-and-deploy)


# Architecture Context

![Multicloud Terraform Provisioning](img/Coarchitech-HandsOnTerraform-v1.0.0.png "Multicloud Terraform Provisioning")


## 1 Create Your Infraestructure

You can use the main project from the root folder **'coarchitech-iac'** to create all infrastructure resources or execute one by one.

### 1.1 Create an S3 Bucket as a Static Website

Using the AWS project inside the repository you can create an S3 Bucket configured as a static website. 

#### 1.1.1 Requirements

- [AWS Account](https://aws.amazon.com/console/)
- [aws-cli](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io/downloads.html)


Before starting the execution of the project, you need to define the env variables  `AWS_ACCESS_KEY_ID,  AWS_SECRET_ACCESS_KEY, AWS_DEFAULT_REGION`.

```hcl
  export AWS_ACCESS_KEY_ID="AKIARGKJ**********"
  export AWS_SECRET_ACCESS_KEY="TJDuL0gcUE3RD0******************"
  export AWS_DEFAULT_REGION="us-east-2"
```

If you prefer, you can configure the provider as the following ([here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)).

#### 1.1.2 Create the S3

Once you are in the path **'coarchitech-iac/aws'** and already has been set the account credentials to AWS account, only need to execute the following commands:

```bash
    terraform init
    terraform plan
    terraform apply
```

### 1.2 Create and Deploy Azure Function App

Using the Azure project inside the repository you can Deploy all the infrastructure required for deploy a simple serverless function in Azure.

Project structure:

```bash
└───azure
    │   .gitignore
    │   .terraform.lock.hcl
    │   .terraform.tfstate.lock.info
    │   main.tf
    │   outputs.tf
    │   privider.tf
    │   README.md
    │   terraform.tfstate
    │   terraform.tfstate.backup
    │   variables.tf
    │   version.tf
    └───app
        │   .funcignore
        │   .gitignore
        │   host.json
        │   local.settings.json
        │   package-lock.json
        │   package.json
        │   proxies.json
        │
        └───hello-world
                function.json
                index.js
                sample.dat
```
the app folder contains all the Javascript code for Serverless function
#### 1.2.1 Requirements
- npm
- terraform
- Azure Account (Validate Student license)
- Visual Studio Code (recommended) and plugins:
    - Hashiscorp Terraform
    - Azure Account
    - Azure function
    - Azure Resources
#### 1.2.2 Dependences:
- Using npm package manager install Azure core tools :

```bash
    npm install -g azure-functions-core-tools@3 --unsafe-perm true

```
- For deploying the module:
Inside Azure folder
```bash
    terraform init
    terraform plan
    terraform apply
```

Note: You must be logged in azure portal using azure cli or azure pluging and being selected the subscription before running the commands.


## 2 Deploy React App

### 2.1 Update package.json

Update in your package.json the value of your bucket. 

Example: 

```json
{
    ... other code
    "deploy": "aws s3 sync build/ s3://sandbox-hands-on-terraform-web-s3 --acl public-read"

    ...
}
```
if your bucket id is **laboratory-bucket**, then your deploy script will be:

```json
{
    ... other code
    "deploy": "aws s3 sync build/ s3://laboratory-bucket --acl public-read"

    ...
}
```

### 2.2 Compile and Deploy

In the root folder of your react application execute the following command: 

`npm run-script build && npm run-script deploy`


