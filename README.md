# tech201_virtualization
## Devops and Development Environmets

## Introduction




### Cloud



Cloud computing is a way of using the Internet to access and store information and technology services, such as computing power, storage space, and software. It offers several benefits over traditional ways of computing, including:

- Flexibility: You can easily adjust the amount of computing resources you use, depending on your needs.
- Cost-effective: You only pay for what you use, and don't need to invest in expensive hardware.
- Reliable: Cloud service providers typically offer high levels of uptime, ensuring your information and services are always available.
- Accessible from anywhere: You can access your information and services from any device with an internet connection.
- Disaster recovery: Your information and services are protected against natural disasters and other disruptions.
- Better collaboration: You and your team can work together more effectively using cloud-based tools and services.
- Safe and secure: Your information is protected by the latest security measures provided by the cloud service provider.
- Stay up-to-date: You can take advantage of new and innovative technologies as they become available.
- Compliance: You can meet industry regulations and standards, such as those related to privacy and data protection.
- Eco-friendly: Cloud computing can reduce the energy consumption and carbon footprint associated with computing.




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
1. Install Ruby:This program works with the VM creater.: [Install link](https://rubyinstaller.org/downloads/)

2. We can double check our version of Ruby in GitBash(run as admin) with command ruby --version

3. Install Virtual Box: This creates VM's: [Install link]( https://www.virtualbox.org/wiki/Download_Old_Builds_6_1)

4. Go to "Turn Windows on and off" and make sure that Hyper-V is disabled and Virtual Machine Platform and Windows Hypervisor Platform is enabled.

5. Install Vagrant from their official website(the install may require a restart of your machine)
To double check it has been install you can open GitBash (run as admin) and type `vagrant --version`.
That should print out the following message if the install was succesful `Vagrant 2.2.7`.

6. In GitBash you have to navigate to the right folder with `pwd` command.
If you encounter a problem with that it could be an issue of the folder having a space in the name.

Use `''` single quotes to cd(change directory) to the right folder. Please follow these instruction:

![GitBash cd issue]("C:\Users\matya\Desktop\git bash issue.png")

7. After that we can open back the GitBash and write a command `vagrant init ubuntu/xenial64`. This creates a file in VS code. Only configuration file (We haven't actually created a VM yet). This file contains instructions that are used to give to our Virtual Box.
Enables us to standardize the dev environment that we are giving to our Developers.

8. Now we want to test the functionality running `vagrant up` in GitBash. Check Oracle if the machine is running)

9. Then we check the functionality `vagrant status`.

10. If we all running with no issues we want to connect to it using `vagrant ssh` in GitBash.
(This program handles all security processes for us)
 
11. Then we can use `ls -a` to show all the folders + hidden folders.

12. Then we can start using `sudo` code which basically means that we wanna get right premissions. We want to start using the web server:#####

12. Now that we are in `vagrant@ubuntu-xenial` we can notice how the colours disappeared.

13. Being inside the VM we can run `sudo apt-get update -y`. This command will update the core function of our VM. Also comfirms the access to the Internet.

14. After we use `sudo apt-get install nginx -y` to install program for our website.

15. Next step is to use `sudo systemctl start nginx`. Lastly `sudo systemctl status nginx`.

16. For easier access for developers we have to use this command `config.vm.network "private_network", ip:"192.168.10.100"`. (This gives our VM an IP address to access)

17. Then we can back out of the VM using `exit` command and use `vagrant reload` to reboot the VM.


To connect to the machine vagrant ssh in git bash then we should be inside the machine 

 Sudo apt-get update -y downloads all the updates9 (confirms the access to internet)
 Sudo apt-get install nginx -y (installs programs)
Sudo systemctl start nginx
Sudo systemctl status nginx
Exit
Vagrant reload



## Linux 


