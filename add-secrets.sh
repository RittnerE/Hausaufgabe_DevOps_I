clear
@echo off
chmod 700 secrets.txt
CURRENT_DATE=$(date +"%Y-%m-%d_%H-%M-%S")
clear

read -p "Enter your Secret: " secret
clear
if [ -n "$secret" ]
then

	echo "$secret" >> secrets.txt
	echo "$CURRENT_DATE" >> secrets.txt
	cat secrets.txt
		sleep 2
else
	echo "please enter a secret"
	sleep 3
	./add-secrets.sh
fi
