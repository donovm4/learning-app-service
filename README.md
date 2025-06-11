# Azure App Service

## Overview

### What is an App Service

- fully managed web application hosting platform
- PaaS offering through Azure
  - user focuses on design and configuration
  - Azure handles infrastructure and scale

### Components

#### Deployment Slots

- encironments where users can push code to test on Azure
- can be swapped with production slot

#### Continuous integration / Continuous deployment (CI/CD)

- CI/CD support out-of-the-box
- Tools:
  - Automated deployment
    - Azure Repos
        - define your own build and release process
        - build code in the cloud
        - run tests
        - generate releases from code
        - push code to Azure Web App
    - GitHub
        - automated deployment directly from GitHub
        - connect GitHub repository to Azure
        - changes pushed to production branch are autmatically deployed
    - BitBucket
        - similar workflow to GitHub
  - Manual deployment
    - FTP
        - FTP or FTPS
        - traditional way of pushing code to hosting environents
    - Git
      - supply App Service with Git URL of remote repository
    - `az webapp up`
      - feature of `az` command
    - `az webapp deploy`
    - Visual Studio
- can automatically sync code and future changes

#### Visual Studio and FTP publishing

- deploy from Visual Studio with Web Deploy
- deploy through FTP-based publishing for more traditional workflows

#### Autoscale support

- Up/Down (increase/decrease compute power)
- In/Out (increase/decrease # of instances)
- built-in

#### Runtime stacks supported

- ASP.NET
- Node.js
- Java
- Python
- more

#### Operating systems supported

- AFTER choosing a runtime stack, this indicated whether or not user has a choice of operating system
  - sometimes a runtime stack is not available on both OS
- If the application is packaged as a container, speciffy the OS in your container.

#### App Service Plans

- set of virtual server resources
- `size`
  - determines performance of the virtual servers
  - determines available App Service features
- every App Service must be assigned to a single App Service Plan

### Billing

- App Service Plans determine the app Service's unit of billing
  - `size`
  - bandwidth
  > simply the # of web apps deployed to App Service Plans has no effect on your bill

### Methods of creation 

- Azure Portal
- Azure Command Line Interface (CLI)
- Scripting
  - PowerShell
- Integrated Dev Environment (IDE)
  - VS Code