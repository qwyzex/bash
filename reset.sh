red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
nc='\033[0m'

echo -e "${yellow}WARNING!!!${nc} THIS WILL RESTORE ${blue}'.bash_profile'${nc} TO IT'S PREVIOUS STATE BEFORE YOU RUN THIS SCRIPT! ARE YOU SURE?"
select yn in "Yes" "No"; do
	case $yn in 
		Yes ) cp ~/qxBash/backup/.bash_profile ~; mv ~/qxBash/qxEssentials/.bashrc ~/qxBash/qxEssentials/bashrc; echo -e "${red}FINISHED RESTORING '.bash_profile'!${nc}"; break;;
		No ) echo "CANCELLED"; break;;
	esac
done

echo -e "\nDO YOU ALSO WANT TO RESTORE ${blue}'.bashrc'${nc} ?"
select yn in "Yes" "No"; do
	case $yn in 
		Yes ) cp ~/qxBash/backup/.bashrc ~; mv ~/qxBash/backup/.bashrc ~/qxBash/backup/bashrc; echo -e "${red}FINISHED RESTORING '.bashrc'${nc}"; break;;
		No ) echo "CANCELLED"; break;;
	esac
done

echo -e "\nDO YOU WANT TO DELETE THE ${blue}'qxBash'${nc} FOLDER IN HOME DIRECTORY? (BAKCUP FOLDERS WILL BE DELETED TOO!)"
select yn in "Yes" "No"; do
	case $yn in 
		Yes ) rm -r ~/qxBash; echo -e "${red}FINISHED DELETING 'qxBash'${nc}"; break;;
		No ) echo "CANCELLED"; break;;
	esac
done
