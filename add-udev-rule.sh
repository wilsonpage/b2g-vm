#!/usr/bin/env bash

file='/etc/udev/rules.d/android.rules'

troubleshoot="\nTry:\n
- Disconnecting and reconnecting your device\n
- Make sure you have VirtualBox entension pack installed\n"

IFS=$'\n';
devices=$(lsusb)
notThere="I can't see it"
options=($devices $notThere)

PS3="Choose your USB device: "

select option in ${options[*]}; do
  if [ $option == $notThere ]; then echo -e $troubleshoot; exit; fi
  break
done

pattern='ID (\w+):'; [[ $option =~ $pattern ]]
vendorID=${BASH_REMATCH[1]}

config="SUBSYSTEM==\"usb\", ATTR{idVendor}==\"${vendorID}\", MODE=\"0666\", GROUP=\"plugdev\""

sudo touch $file

if ! grep -qe "${config}" $file; then
  echo $config | sudo tee -a $file &> /dev/null
  sudo chmod a+r $file
  sudo service udev restart &> /dev/null
  echo -e "\nNew device added: '$option'\n"
fi
