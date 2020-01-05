# Secure AKS at Deployment 
-----

## Introduction
Welcome to the Azure AKS Kubernetes deployment security Workshop.
We won’t spend too much time on the presentation of AKS, the service that has been very popular in recent months.
In brief, AKS is Microsoft’s new managed container orchestration service. It is gradually replacing Azure Container service and focuses only on the Cloud Native Computing foundation (CNCF) Kubernetes orchestration engine.
In the last workshop: Create a Kubernetes cluster with Azure AKS using Terraform, we have discussed the Azure Kubernetes Service (AKS) basics, the Infrastructure as Code (IaC) mechanism with a focus on Hashicorp Terraform and how to deploy a Kubernetes cluster with AKS using Terraform.
With this lab, you’ll go through tasks that will help you  master the basic and more advanced topics required to secure Azure AKS Kubernetes cluster at the deployment level based on the following mechanisms and technologies:

* ✅Azure AD (AAD)
* ✅AKS with Role-Based Access Control (RBAC)
* ✅Container Network Interface (CNI)
* ✅Azure Network policy
* ✅Azure Key Vault

------

This article is organized in three parts:

* Part 1: Implement Azure AD
* Part 2: Implement RBAC authentication
* Part3: Implement Azure Network Policies

------
## Assumptions and Prerequisites

1. You have basic knowledge of Azure
2. Have basic knowledge of Kubernetes
3. You have Terraform installed in your local machine
4. You have basic experience with Terraform
5. Azure subscription: Sign up for an Azure account, if you don’t own one already. You will receive USD200 in free credits.

-----
## Part I: Implement Azure AD to secure AKS at the deployment
