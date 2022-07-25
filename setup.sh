#!/bin/bash

#Creating Groups
echo "Creating Groups 'Admins', 'Testers' and 'Others'"
groupadd -g 2000 Admins
groupadd -g 3000 Testers
groupadd -g 4000 Others

#Creating Users
echo "Creating Users"
useradd -u 2001 admin1
usermod -aG Admins admin1
useradd -u 3001 tester1
usermod -aG Testers tester1
useradd -u 3002 tester2
usermod -aG Testers tester2
useradd -u 4001 sale1
usermod -aG Others sale1
useradd -u 4002 developer1
usermod -aG Others developer1

#Creating Directories and files
echo "Creating Directories and files"
mkdir /testingFilePerms
mkdir /testingFilePerms/userR--Dir/
chmod 400 /testingFilePerms/userR--Dir/
touch /testingFilePerms/userR--Dir/userR--File
chmod 400 /testingFilePerms/userR--Dir/userR--File
touch /testingFilePerms/userR--Dir/user-W-File
chmod 200 /testingFilePerms/userR--Dir/user-W-File
touch /testingFilePerms/userR--Dir/user--XFile
chmod 100 /testingFilePerms/userR--Dir/user--XFile
touch /testingFilePerms/userR--Dir/groupR--File
chmod 400 /testingFilePerms/userR--Dir/groupR--File
touch /testingFilePerms/userR--Dir/group-W-File
chmod 200 /testingFilePerms/userR--Dir/group-W-File
touch /testingFilePerms/userR--Dir/group--XFile
chmod 100 /testingFilePerms/userR--Dir/group--XFile
touch /testingFilePerms/userR--Dir/groupRW-File
chmod 600 /testingFilePerms/userR--Dir/groupRW-File
touch /testingFilePerms/userR--Dir/group-WXFile
chmod 300 /testingFilePerms/userR--Dir/group-WXFile
touch /testingFilePerms/userR--Dir/groupR-XFile
chmod 500 /testingFilePerms/userR--Dir/groupR-XFile
touch /testingFilePerms/userR--Dir/otherR--File
chmod 400 /testingFilePerms/userR--Dir/otherR--File
touch /testingFilePerms/userR--Dir/other-W-File
chmod 200 /testingFilePerms/userR--Dir/other-W-File
touch /testingFilePerms/userR--Dir/other--XFile
chmod 100 /testingFilePerms/userR--Dir/other--XFile
touch /testingFilePerms/userR--Dir/otherRW-File
chmod 600 /testingFilePerms/userR--Dir/otherRW-File
touch /testingFilePerms/userR--Dir/other-WXFile
chmod 300 /testingFilePerms/userR--Dir/other-WXFile
touch /testingFilePerms/userR--Dir/otherR-XFile
chmod 500 /testingFilePerms/userR--Dir/otherR-XFile
chown -R admin1:Admins /testingFilePerms/userR--Dir/
