#! /bin/bash
To="gothandaraman48@gmail.com"
ram_free=$(free -mt| grep Total:|awk '{print $4}')
if [ $ram_free -le 800 ]
 then
	 echo"sending mail because your ram size is less than 70"
	 echo"Subject:warning, Ram free size is low"|sendmail $To
fi
