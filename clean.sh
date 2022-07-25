#!/bin/bash
echo "Deleting Files"
rm -rf /testingFilePerms
echo "Deleteing users"
userdel admin1
userdel tester1
userdel tester2
userdel sale1
userdel developer1
echo "Deleting groups"
groupdel Admins
groupdel Testers
groupdel Others

echo "Finished"