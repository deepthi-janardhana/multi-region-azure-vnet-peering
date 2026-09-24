#!/bin/bash

# Create VNet Peering between HQ and Branch

RESOURCE_GROUP="rg-multi-region"
VNET_HQ="vnet-hq"
VNET_BRANCH="vnet-branch"

az network vnet peering create \
  --resource-group $RESOURCE_GROUP \
  --name hq-to-branch \
  --vnet-name $VNET_HQ \
  --remote-vnet $VNET_BRANCH \
  --allow-vnet-access \
  --allow-forwarded-traffic

az network vnet peering create \
  --resource-group $RESOURCE_GROUP \
  --name branch-to-hq \
  --vnet-name $VNET_BRANCH \
  --remote-vnet $VNET_HQ \
  --allow-vnet-access \
  --allow-forwarded-traffic

echo "VNet Peering created successfully!"
