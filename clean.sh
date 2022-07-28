#!/bin/bash
echo "Deleting Files"
rm -rf /testingFilePerms
echo "Deleteing users"
userdel -r admin1
userdel -r tester1
userdel -r tester2
userdel -r sale1
userdel -r developer1
echo "Deleting groups"
groupdel Admins
groupdel Testers
groupdel Others

echo "Finished"
