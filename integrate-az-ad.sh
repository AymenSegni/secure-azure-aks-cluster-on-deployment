#!/bin/bash
# Provide your own unique aksname within the Azure AD tenant
aksname="run-it-on-cloud"
resourcegroup="runItOnCloud"
location="westeurope"


# Create the Azure AD application Server
serverApplicationId=$(az ad app create \
    --display-name "${aksname}Server" \
    --identifier-uris "https://${aksname}Server" \
    --query appId -o tsv)

# Update the application group memebership claims
az ad app update --id $serverApplicationId --set groupMembershipClaims=All
