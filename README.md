# multi-region-azure-vnet-peering

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

### 1. Created Virtual Networks
- Created a Virtual Network in the **Headquarters region**
- Created another Virtual Network in the **Branch region**
- Used non-overlapping IP address spaces for both networks

### 2. Deployed Test Virtual Machines
- Deployed a **Standard DS1 v2** Virtual Machine in the Headquarters VNet
- Deployed another **Standard DS1 v2** Virtual Machine in the Branch VNet
- These VMs were used for testing connectivity

### 3. Configured VNet Peering
- Created VNet Peering from Headquarters VNet to Branch VNet
- Created VNet Peering from Branch VNet to Headquarters VNet
- Enabled necessary settings for traffic forwarding

### 4. Verified Connectivity
- Logged into both Virtual Machines
- Used the **Ping** command to test communication between the two VMs
- Successfully confirmed private connectivity across regions

---

## Result / Impact

- Established secure private connectivity between the application and data networks
- Enabled reliable communication across regions
- Provided a foundation for a scalable multi-region cloud infrastructure
- All traffic between regions stays on the Microsoft private backbone network

---

## Author
Deepthi 
Multi-Region Azure Infrastructure Project
