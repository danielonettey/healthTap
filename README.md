# Requirements Meeting

R001) The data storage part of the system should allow for user’s record to be updated / delete -- Functionality was successfully implemented in application

R002) The system should allow transfer of Data through NFC --	Functionality was successfully implemented in application

R003) The system must have a fingerprint login for devices that have the feature	--	Functionality was not implemented in application

R004) The data transfer part of the system should only allow transfer of data to medical or security personnel	-- Functionality was successfully implemented in application

R005) The data storage part of the system should encrypt users’ data to prevent unauthorized people from gaining access to it	--Functionality was not implemented in application

R006) Victim’s health information should contain the medications they are currently on	--	Functionality was successfully implemented in application

R007)	The system should include an auto-emergency-calling feature to call emergency contacts of the victim after data is transferred --	Functionality was not implemented in application

R008)	Victim’s health information should contain their underlying health conditions	--	Functionality was successfully implemented in application

R009)	The system should include tips to stay healthy	--	Functionality was successfully implemented in application

R010)	The system should include patient health tracking	--	Functionality was not implemented in application

# healthTap
This is a final project for software engineering class where people have the liberty to use NFC to transfer their health data from one phone to another after the phones tap each other. This is to help users carry their health details around and be well prepared in terms of emergencies 

# TECHNOLOGIES
Flutter: The application was built with a cross-platform framework - flutter. Flutter was used because it allows for one codebase to be used on both android and ios devices hence, making development faster. Also, in terms of performance, flutter offers one of the best performance for mobile application development making it very suitable for a health project like ours.

Hive: Hive is a lightweight key-value pair database that we used to store data locally on the user's device. It also offers good performance and has a small runtime making accesses to information from it fast. The choice of Hive as our technology for local storage was based on the fact that retrieving a user's health data in case of an emergency is an operation which cannot be delayed.

NFC: NFC stands for "Near Field Communication". The reason use of this technology is because it allows for the transfer of data between two NFC-enabled devices that come into contact. In relation to our project, this technology was used to transfer health data from one device to another NFC-enabled device.


