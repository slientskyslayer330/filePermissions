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
mkdir /testingFilePerms/userRWXDir/

echo "This is group R-- file." >>  /testingFilePerms/userRWXDir/groupR--File
chmod 040 /testingFilePerms/userRWXDir/groupR--File
echo "This is group -W- file." >>  /testingFilePerms/userRWXDir/group-W-File
chmod 020 /testingFilePerms/userRWXDir/group-W-File
echo "This is group --X file." >>  /testingFilePerms/userRWXDir/group--XFile
chmod 010 /testingFilePerms/userRWXDir/group--XFile
echo "This is group RW- file." >>  /testingFilePerms/userRWXDir/groupRW-File
chmod 060 /testingFilePerms/userRWXDir/groupRW-File
echo "This is group -WX file." >>  /testingFilePerms/userRWXDir/group-WXFile
chmod 030 /testingFilePerms/userRWXDir/group-WXFile
echo "This is group R-X file." >>  /testingFilePerms/userRWXDir/groupR-XFile
chmod 050 /testingFilePerms/userRWXDir/groupR-XFile
echo "This is other R-- file." >>  /testingFilePerms/userRWXDir/otherR--File
chmod 004 /testingFilePerms/userRWXDir/otherR--File
echo "This is other -W- file." >>  /testingFilePerms/userRWXDir/other-W-File
chmod 004 /testingFilePerms/userRWXDir/other-W-File
echo "This is other --X file." >>  /testingFilePerms/userRWXDir/other--XFile
chmod 001 /testingFilePerms/userRWXDir/other--XFile
echo "This is other RW- file." >>  /testingFilePerms/userRWXDir/otherRW-File
chmod 006 /testingFilePerms/userRWXDir/otherRW-File
echo "This is other -WX file." >>  /testingFilePerms/userRWXDir/other-WXFile
chmod 003 /testingFilePerms/userRWXDir/other-WXFile
echo "This is other R-X file." >>  /testingFilePerms/userRWXDir/otherR-XFile
chmod 005 /testingFilePerms/userRWXDir/otherR-XFile
echo "This is setuid file." >>  /testingFilePerms/userRWXDir/setuidFile

echo "This is setgid file." >>  /testingFilePerms/userRWXDir/setgidFile

echo "This is stickybit file." >>  /testingFilePerms/userRWXDir/stickybitFile

chown -R admin1:Admins /testingFilePerms/
chmod -R u+rwX /testingFilePerms/userRWXDir/
chmod o= /testingFilePerms/userRWXDir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/groupRWXdir/
chmod g=rwx /testingFilePerms/groupRWXdir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/otherR--dir/
chmod o=r /testingFilePerms/otherR--dir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/other-W-dir/
chmod o=w /testingFilePerms/other-W-dir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/other--Xdir/
chmod o=x /testingFilePerms/other--Xdir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/otherRW-dir/
chmod o=rw /testingFilePerms/otherRW-dir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/otherR-Xdir/
chmod o=rx /testingFilePerms/otherR-Xdir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/other-WXdir/
chmod o=wx /testingFilePerms/other-WXdir/
cp -a /testingFilePerms/userRWXDir /testingFilePerms/stickyBitDir/
chmod 1777 /testingFilePerms/stickyBitDir/
