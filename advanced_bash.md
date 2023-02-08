## Advanced Bash

We want to interact with our VM.

`uname`- shows you the OS type (Linux). There is more information inside this code but we need to be more specific.
`uname -a`- Gives us the entire information(shorter version of uname --all)
`uname -s` - gives us the OS as well
`uname -m`- gives us the system info
`uname -si` - os platform
`uname -srp` - (Linux 4.4.0-210-generic x86_64
)

### Navigation

`cd ..` (takes out up a level, one back)
`cd ../../` ( takes us two levels in the directories, two back)
`cd /` (To get to home folder, "root directory")
`ls` shows  the folders and files of where you currently are
`ls -l` list premissions on files and folders ("l" long format)
Absolute path is from the absolute base of the machine 
Relative path is where I am right now 
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

`touch emptyfile.txt` Makes an empty file 
`nano emptyfile.txt` to edit the file and to save ctrl X
`cat emptyfile.txt` - shows us the changes made in the file 

### Creating folders

`mkdir` - Making a new directory (folder)
`cp emptyfile.txt copied_file.txt` - to copy a file 
`cp -rf new_new_folder new_folder2` to copy a folder 
`~` takes you to your home as user 
`rsync -r new_folder1 new_folder2` (syncs up the folders)


### Moving files

`mv emptyfile.txt new_folder` to move folders
`mv emptyfile.txt ../../../` to move more down the line (more folder skipping)
You can use `mv` to rename to a file as well 
`../`

### Deleting files

`rm` to remove things
`rm copied_file.txt` delete a file 
`rm -rf new_folder` to delete a folder (r-everything inside that folder will get manipulated f- force)

`man ls` Detail look of what we can do in the terminal
`grep file_name.txt` to search for things
`grep test *` search everything within a folder 
`gret test * -R` search the whole folder but also search within the folder 


### Wild cards
Allows to specifies characters and match certain things
`ls f*` shows me all the folders with "f" in it
It can be a word also







