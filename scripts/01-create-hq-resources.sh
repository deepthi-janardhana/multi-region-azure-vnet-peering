#!/bin/bash

# Create Headquarters VNet and VM

RESOURCE_GROUP="rg-multi-region"
LOCATION_HQ="eastus"
VNET_HQ="vnet-hq"
SUBNET_HQ="subnet-hq"
VM_HQ="vm-hq"

az group create --name $RESOURCE_GROUP --location $LOCATION_HQ

az network vnet create \
  --resource-group $RESOURCE_GROUP \
  --name $VNET_HQ \
  --location $LOCATION_HQ \
  --address-prefix 10.1.0.0/16 \
  --subnet-name $SUBNET_HQ \
  --subnet-prefix 10.1.1.0/24

az vm create \
  --resource-group $RESOURCE_GROUP \
  --name $VM_HQ \
  --location $LOCATION_HQ \
  --vnet-name $VNET_HQ \
  --subnet $SUBNET_HQ \
  --image Ubuntu2204 \
  --size Standard_DS1_v2 \
  --admin-username azureuser \
  --generate-ssh-keys
