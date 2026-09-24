#!/bin/bash

# Create Branch VNet and VM

RESOURCE_GROUP="rg-multi-region"
LOCATION_BRANCH="westus"
VNET_BRANCH="vnet-branch"
SUBNET_BRANCH="subnet-branch"
VM_BRANCH="vm-branch"

az network vnet create \
  --resource-group $RESOURCE_GROUP \
  --name $VNET_BRANCH \
  --location $LOCATION_BRANCH \
  --address-prefix 10.2.0.0/16 \
  --subnet-name $SUBNET_BRANCH \
  --subnet-prefix 10.2.1.0/24

az vm create \
  --resource-group $RESOURCE_GROUP \
  --name $VM_BRANCH \
  --location $LOCATION_BRANCH \
  --vnet-name $VNET_BRANCH \
  --subnet $SUBNET_BRANCH \
  --image Ubuntu2204 \
  --size Standard_DS1_v2 \
  --admin-username azureuser \
  --generate-ssh-keys
