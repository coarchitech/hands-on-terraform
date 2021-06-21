# Hands On Terraform 


- [Hands On Terraform](#hands-on-terraform)
  - [Create Your Infraestructure](#create-your-infraestructure)
  - [Deploy React App](#deploy-react-app)
    - [Update package.json](#update-packagejson)
    - [Compile and Deploy](#compile-and-deploy)


## Create Your Infraestructure



## Deploy React App

### Update package.json

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

### Compile and Deploy

In the root folder of your react application execute the following command: 

`npm run-script build && npm run-script deploy`
