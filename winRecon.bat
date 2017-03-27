@echo author : Kavani Parikh

@ echo off

Rem Making a dedicated directory to stote output

mkdir winInfo
cd winInfo

ver >> osVersion.txt

getmac >> macInfo.txt

systeminfo >> systemInformation.txt

gpresult /r >> groupPolicy.txt

fsutil fsinfo drives >> availableDrives.txt

path >> pathInfo.txt

driverquery /fo csv /si >> driverInfo.csv

netsh wlan show wirelesscapabilities >> wirelessCapability.txt
netsh wlan show interfaces >> wirelesInterface.txt
netsh wlan show drivers >> wirelessDrivers.txt
netsh wlan show tracing >> wirelessTracingInfo.txt
netsh wlan show profiles >> wirelessProfiles.txt
netsh wlan show settings >> wirelesSettings.txt

ipconfig /all >> ipConfiguration.txt

arp -a >> arpInfo.txt

route print -4 >> ipv4RoutingTableInfo.txt
route print -6 >> ipv6RoutingTableInfo.txt

netstat -ano >> networkStatistics.txt

dxdiag hwDiagnosis.txt

assoc >> allowedFileTypes.txt

tasklist /v /fo csv >> taskList1.csv
tasklist /svc /fo csv >> taskList2.csv
tasklist /m /fo csv >> taskList3.csv
tasklist /apps /fo csv >> taskList4.csv


cd..
