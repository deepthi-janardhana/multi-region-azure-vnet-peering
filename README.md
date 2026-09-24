# Deploying Multi-Region Application Infrastructure with Azure VNet Peering

**Objective**  
Create a secure multi-region Azure infrastructure for the application and database tiers while establishing private connectivity between the headquarters and branch networks.

**Tools & Technology**  
- Microsoft Azure Portal  
- Azure Virtual Network (VNet)  
- Azure Virtual Machine (Standard DS1 v2)  
- VNet Peering  
- Virtual Network Gateway  
- Ping  

---



## Process Followed (Using Azure Portal)

1. Created separate Virtual Networks in the Headquarters and Branch regions
2. Deployed **Standard DS1 v2** Virtual Machines in both networks
3. Configured **VNet Peering** between the Headquarters and Branch Virtual Networks
4. Verified private connectivity between the Virtual Machines using **Ping**

---

## Sample Scripts (Examples Only)

| File | Purpose |
|------|---------|
| `scripts/01-create-hq-resources.sh` | Example: Creates Headquarters VNet + VM |
| `scripts/02-create-branch-resources.sh` | Example: Creates Branch VNet + VM |
| `scripts/03-create-vnet-peering.sh` | Example: Creates VNet Peering |
| `deploy-all.sh` | Example: Runs all steps together |

---

## Result / Impact
- Established secure private connectivity between the application and data networks
- Enabled reliable communication across regions
- Provided a foundation for a scalable multi-region cloud infrastructure

---
## Important Note
I have completed this project using the **Azure Portal (Console)**.  
The scripts provided in this repository are **only examples** to show how the same infrastructure can be created using Azure CLI.  
I have **not** used these scripts for the actual implementation.

---

## Author
Deepthi
Multi-Region Azure Infrastructure Project
