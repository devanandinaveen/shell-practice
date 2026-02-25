#!/bin/bash
Userid=$(id -u)

if [ $Userid -ne 0 ]; then 
  echo "please run this command as root user"
  exit 1
fi

VALIDATE()
{
   if [ $1 -ne 0]; then 
   echo "$2 is not done"
   exit 1
else 
echo "$2 is done"
fi

}
VALIDATE $? "Installing Nginx"
dnf install mysql -y
VALIDATE $? "Installing MySql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"
