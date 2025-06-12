# Migrating ASP.NET apps to Azure

## Hosting options

### On-Prem

Organization is responsible for the management of:

  - hardware
  - software
  - data
  - networking
  - security
  - patching / updates / licensing

### IaaS

Organization is responsible for the management of:

- software
- data
- runtimes
- choice and maintenance of OS

Provider is responsible for the management of:

- virtualization technology
- underlying hardware
- datacenter storage, networking, security

### PaaS

Organization is responsible for the management of:

- application
- data

Provider is responsible for the management of:

- system software
- OS
- hardware
- virtualization
- datacenter

## Considerations

### Performance / Scale

- scaling options are available for both App Service and SQL databases
  - Scale Up/Down: get more or deallocate CPU, memory, disk space, extra features
  - Scale In/Out: increase/decrease # of VM instances or add/deallocate  resources for SQL DB / MI

> these scaling options don't require code changes or redeployment

### Networking

- Azure virtual networks can secure aspects of applications and data (similar to a firewall):
  - confire subnets with CIDR notation
  - perimeter networks to isolate traffic
  - usable network ports

- Communicatin methods:
  - Virtual Network
  - Service Endpoint
  - Virtual Network Peering
  - Point-to-Site VPN - single machine to a virtual network
  - Site-to-Site VPN - on-prem VPM device to an Azure VPN gateway
  - Express Route - direct connection between Azure/Partner datacenter to organization netword

> What networking equipment do you leverage now, and how can their function(s) be leveraged in Azure?

### Security

Microsoft Entra ID: cloud-based identity and access management service
- Self-service password reset
- MFA
- hybrid integration - cloud-based password resets can be written back to on-prem AD environments as well
- Password-less authentication - biometrics, FIDO2 security keys

### Cost

Leverage the Azure Pricing Calculator

- App Service costs
  - adjust the Tire to view compute configurations of CPU cores and memory options
  - find a tier that matches on-prem environment(s)
  - increase the number of instances
- Azure SQL Database costs
  - Users can modify parameters for databases and compute resources:
    - Region
    - Type
    - Tier
      - Service
      - Backup storage
      - Compute

Azure Hybrid Use Benefit


## Migration scenario

- Microsoft ASP.NET applications and databases from on-prem to Azure
- Azure App Service and supporting Azure SQL database

### Azure App Service

- http-based service for hosting web apps and REST APIs
- autoscaling
- high availability
- Windows and Linux support
- CI/CD

### Azure SQL Database

- intelligent, scalable, relational fully-managed SQL database in Azure
  - manages patching, upgrading, backups WITHOUT user intervention
- Two models:
  1. Single database model
    - isolated database for application's data needs
    - single database deployment
  2. Elastic pool model
    - collection of single databases that SHARE resoures
      - memory
      - CPU
    - dynamic scaling available

