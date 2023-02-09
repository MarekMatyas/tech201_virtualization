## Advanced Bash

We want to interact with our VM.

- `uname`- shows you the OS type (Linux). There is more information inside this code but we need to be more specific.

- `uname -a`- Gives us the entire information(shorter version of uname --all)

- `uname -s` - gives us the OS as well(kernel name)

- `uname -m`- gives us the system info(hardware name)

- `uname -si` - os platform

- `uname -srp` - (Linux 4.4.0-210-generic x86_64
)

### Navigation


- `cd ..` (takes out up a level, one back)

- `cd ../../` ( takes us two levels in the directories, two back)

- `cd /` (To get to home folder, "root directory")

- `ls` shows  the folders and files of where you currently are

- `ls -l` list premissions on files and folders ("l" long format)

Absolute path is a complete path that starts from the root directory and specifies the exact location of a file or directory. 
Relative path specifies the location of a file relative to the current directory. It does not include the complete directory structure and is relative to the current directory. 
***Absolute path***
Linuc/Max
/users/username/Documents/myfile.txt
Windows
C:\users\username\Documents\myfile.txt
Web URL
https://www.mysite.com/myfolder/subfolder/sub/sub2/page1/html

***Relative path***

/Folder1/Folder2/file.txt (where we are)

### Creating files


- `touch emptyfile.txt` Makes an empty file 

- `nano emptyfile.txt` to edit the file and to save ctrl X

- `cat emptyfile.txt` - shows us the changes made in the file 

### Creating folders


- `mkdir` - Making a new directory (folder)

### Copying 

- `cp emptyfile.txt(name of the file to be copied) copied_file.txt (name of the new file)` - to copy a file 

- `cp -rf new_new_folder new_folder2` to copy a folder 

- `~` takes you to your home as user 

- `rsync -r new_folder1 new_folder2` (syncs up the folders) 
This is a command to copy the contents of new_folder1 to new_folder2 using the rsync utility in the bash shell. The -r option tells rsync to copy the contents of new_folder1 recursively, which means it will copy all files and subdirectories within new_folder1 to new_folder2.


### Moving files


- `mv emptyfile.txt new_folder` to move folders

- `mv emptyfile.txt ../../../` to move more down the line (more folder skipping)
You can use `mv` to rename to a file as well 

- `../`

### Deleting files

- `rm` to remove things

- `rm copied_file.txt` delete a file 

- `rm -rf new_folder` to delete a folder (r-everything inside that folder will get manipulated f- force)Removes everything inside that folder
- `rm -rf` This deletes everything !! ***Never use this command!!***  


- `man ls` Detail look of what we can do in the terminal

- `grep file_name.txt` to search for things

- `grep test *` search everything within a folder 

- `gret test * -R` search the whole folder but also search within the folder 


### Wild cards
Allows to specifies characters and match certain things
`ls f*` shows me all the folders with "f" in it
It can be a word also.

`sudo chmod u+x <name of the file>`



## Premissions 


- `ls -l`
`drwxrwxr-x 2 vagrant vagrant 4096 Feb  8 20:13 new_folder1`
`drwxrwxr-x 3 vagrant vagrant 4096 Feb  8 20:13 new_folder2`

`r` - read premissions ( you may view)

`w` - write premissions ( you may change the content)

`x` - execute a file (means you can actaully run that program)

`drwxrwxr-x`  Owner(1.rwx) -> Group(rwx) -> Others/All (You can't modify it)

### To modify

 - `sudo chmod` sudo being (super user do) chmod(change file, mode bits(premissions))

- `sudo chmod u+x <name of the file>` (u- meaning users,)

- u - user
- o - other
- `sudo chmod 777 emptyfile.txt` give all the premissions to everyone 

`4 = read, 2 = write, 1 = execute` 


User - Group - Other

                 Read      Write     Execute
Setting           0          0          0
Binary Value:     4          2          1

Because 4 + 2 + 1 = 7
- `777` -> means All premissions for all users/groups/other

- `755` -> User can do everything, group and other can read and execute

- `541` -> User can read and execute, groups can read only, other can execute

- `764` -> All premission for User, groups can read and write, other can read only

### Process management

- `top` is a task manager in the terminal

- `sleep 120 &`

- `ps` shows the running processes

- `kill + number of the process` kills the process

- `kill -9 + number of the process` Gets rid of the process. `(&)` means makes it run in the background (doesnt lock you out of the terminal, you won't have to wait) 

- `fg` means foreground 

If you dont want to be locked out use `control+z` to stop the process.

- `sudo apt install tree -y` install the tree to list out the folders and files. 

- `tree` to display the tree

























