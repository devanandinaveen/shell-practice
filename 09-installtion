#!/bin/bash
Userid=$(id -u)

if [ $Userid -ne 0 ]; then 
  echo "please run this command as root user"
  exit 1
fi

VALIDATE()
{
   if [ $? -ne 0]; then 
   echo "installation is not done"
   exit 1
else 
echo "Installtion is done"
fi

}
echo "Installing nginx"
 dnf install nginx -y

 if [ $? -ne 0 ]; then 
  echo "installation failed"
  exit 1
  else 
  echo "installtion is successful"

fi
dnf install mysql -y
if [ $? -ne 0 ]; then 
  echo "installation failed"
  exit 1
  else 
  echo "installtion is successful"

fi

dnf install nodejs -y
if [ $? -ne 0 ]; then 
  echo "installation failed"
  exit 1
  else 
  echo "installtion is successful"

fi
