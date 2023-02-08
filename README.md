# tech201_virtualization
## Devops and Development Environmets

## Introduction

### 4 Things of DevOps

**1.Ease of use**- Other teams are going to use the tools we create(they won’t use them if they aren’t user-friendly). If Devs do not use our tools then there will be delays in deployment down the line.

**2.Flexibility** - It can be easy to get locked into using a specific product, tool or software and then it becomes hard for the company to keep up with industry changes.(Everything the company uses should be easily changed or updated as the business needs change.

**3.Robustness** - We need as close to 100 % uptime as possible for our company’s services (We are responsible for achieving this as DevOps engineers).

**4.Cost** - Cost is often overlooked. We need to make sure the company is being as efficient as possible in it’s tech dealings. (For example how powerful a machine do we need to conduct a task ? Do we need certain servers running? etc


### ***Monotlith***
A monolithic architecture is a singular, large computing network with one code base that couples all of the business concerns together.

To make a change to this sort of application requires udating the entire stack by accessing the code base and building and deploying an updated version of the service-side interface.


# Development Environments 
Area where developers can run their code in and test it (A space on some machine that has all the tools required for testing and development).

As Devops engineers one of our jobs is to create these areas ( We have to choose the tools they use because we have to full areas in mind and we want to control it).

### What makes a good Dev environment:

1. User friendly, fast and robust
2. It should be easy to update and change if new change is required
3. It should match the production environment as closely as possible
4. It should be the same for everyone, everywhere (has to configured the same way on all the machines)
5. It should only support one application (if App1 requires version 1.1 and App 2 requires version 1.4 it will not work)

Additional notes: Do not try to mix and match!!

If App 1 needs a program and that program conflicts with a program that App2 needs. 

## Setup: 
1. Install Ruby:This program works with the VM creater.

2. We can double check our version of Ruby in GitBash(run as admin) with command ruby --version

3. Install Virtual Box: This creates VM's

4. Go to "Turn Windows on and off" and make sure that Hyper-V is disabled and Virtual Machine Platform and Windows Hypervisor Platform is enabled.

5. Install Vagrant from their official website(the install may require a restart of your machine)
To double check it has been install you can open GitBash (run as admin) and type `vagrant --version`.
That should print out the following message if the install was succesful `Vagrant 2.2.7`.

6. In GitBash you have to navigate to the right folder with `pwd` command.
If you encounter a problem with that it could be an issue of the folder having a space in the name.

Use `''` single quotes to cd(change directory) to the right folder. Please follow these instruction:



7. After that we can open back the GitBash and write a command `vagrant init ubuntu/xenial64`. This creates a file in VS code. Only configuration file (We haven't actually created a VM yet).


To connect to the machine vagrant ssh in git bash then we should be inside the machine 

 Sudo apt-get update -y downloads all the updates9 (confirms the access to internet)
 Sudo apt-get install nginx -y (installs programs)
Sudo systemctl start nginx
Sudo systemctl status nginx
Exit
Vagrant reload
