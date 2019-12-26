# Secure Azure AKS kubernetes cluster deployment
AKS security lab: using Azure AD, RBAC, Azure CNI, Azure network policy, Azure KeyVault and Terraform

-----

## Introduction

We won't spend too much time on the presentation of AKS, the service that has been very popular in recent months.
In my last article: [Create a Kubernetes cluster with Azure AKS using Terraform](https://aymen-segni.com/index.php/2019/12/24/create-a-kubernetes-cluster-with-azure-aks-using-terraform/), I have presented the Azure Kubernetes Service, the Infrastructure as Code (IaC) mechanism with a focus on Hashicorp Terraform and how to deploy a Kubernetes cluster with AKS using Terraform.
With this lab, we will exclusively discuss how to secure Azure Kubernetes Service (AKS) at the deployment level based on the following mechanisms and technologies:
1. Azure AD (AAD)
2. AKS with Role-Based Access Control (RBAC)
3. Azure Container Network Interface (CNI)
4. Azure Network policy
5. Azure Key Vault

-----

This guide walks you through how to the following tasks:

1. ✅ Deploy and run a production-grade Kubernetes cluster on Azure Cloud  
2. ✅ Use Terraform and Azure Key Vault to deploy a secure Kubernetes cluster
3. ✅ Learn and use the Azure and Kubernetes security solutions
