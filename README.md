# Challenge link

[Click here to take a look at Magloirend's challenge statement](https://github.com/magloirend/digital_school_lessons/blob/main/challenge/Challenge%20Pratique%20-%20TP%20Not%C3%A9.ipynb).


# Setup

This terraform script is made for GCP. 

First of all create a new project on [https://cloud.google.com](https://cloud.google.com/).
Then make sure your `credentials.json` has been filled correctly based on `credentials.example.json` with your IAM User credentials ([Check documentation](https://cloud.google.com/iam/docs/reference/credentials/rest)).

## IAM User roles

The user needs the following roles :

- Editor
- Cloud Functions Admin

## Enabled APIs

Please enable the following APIs before running the script : 

- Cloud Run API
- Cloud Functions API
- Cloud Build API

## Clone and boot the project

First of all make sure to have terraform installed :
```
brew install terraform
```

Then clone the project :
```
git clone git@github.com:Lockev/tf-gcp-challenge-Prigent-Guillaume-2.git
cd tf-gcp-challenge-Prigent-Guillaume-2
```

## Boot the terraform script

As long as every step above were carefully executed, you'll now be able to start the terraform script. 
Here are the 2 required commands :
```
terraform init
terraform apply
```

In case you'd like to clean the created architecture, please use :
```
terraform destroy
```

# Naming conventions

- Resource names must be in lowercase. Use underscores (`_`) for word splitting.
- Variable names must also be in lowercase. However variables use dashes (`-`) for word splitting, for better differenciation.
- Use variable names that are the easiest as possible. Ex : `name`, `description`, `location`
- When a variable comes from another resource please prefix the variable name with the resource name. Ex : `dataset-name`, `cloud-function-descripton`
- A variable must be at maximum 5 words & 50 letters long. (Some GCP constraint will sometimes force you bellow 30 chars + alphanumeric)
