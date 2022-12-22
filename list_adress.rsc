#===============================================================================
#_bogon_list_for_internet

add address=0.0.0.0/8 comment="self_identification_[rfc_3330]" list=bogon
add address=10.0.0.0/8 comment="private[rfc_1918]_class_a" list=bogon
add address=127.0.0.0/16 comment="loopback_[rfc_3330]" list=bogon
add address=169.254.0.0/16 comment="link_local_[rfc_3330]" list=bogon
add address=172.16.0.0/12 comment="private[rfc_1918]_class_b" list=bogon
add address=192.168.0.0/16 comment="private_[rfc_1918]_class_c" list=bogon
add address=192.0.2.0/24 comment="reservediana_testnet1" list=bogon
add address=192.88.99.0/24 comment="6to4_relay_anycast_[rfc_3068]" list=bogon
add address=198.18.0.0/15 comment="nidb_testing" list=bogon
add address=198.51.100.0/24 comment="reserved_iana_testnet2" list=bogon
add address=203.0.113.0/24 comment="reserved_iana_testnet3" list=bogon
add address=224.0.0.0/4 comment="mc,_class_d,_iana" list=bogon
#===============================================================================

#===============================================================================
#_rassomware

#_cobalt_rassomware
add address=148.251.71.182 comment="dec_22 cobalt_update_win" list=rassomware
add address=162.55.137.20 comment="mar_22 cobalt_rat" list=rassomware
add address=107.173.231.114  comment="early_22 cobalt_mirage" list=rassomware
add address=198.12.65.175 comment="early_22 cobalt_mirage" list=rassomware
add address=newdesk.top comment="jul_20 cobalt_mirage" list=rassomware
add address=onedriver-srv.ml comment="may_21 cobalt_mirage" list=rassomware
add address=symantecserver.co comment="jun_21 cobalt_mirage" list=rassomware
add address=microsoft-updateserver.cf comment="dec_21 cobalt_mirage" list=rassomware
add address=msupdate.us comment="jan_21 cobalt_mirage" list=rassomware
add address=service-management.tk comment="jan_22 cobalt_mirage" list=rassomware
add address=aptmirror.eu comment="jan_22 cobalt_mirage" list=rassomware
add address=winstore.us  comment="jan_22 cobalt_mirage" list=rassomware
add address=my-logford.ml comment="feb_22 cobalt_mirage" list=rassomware
add address=gupdate.us comment="mar_22 cobalt_mirage" list=rassomware
add address=tcp443.org comment="mar_22 cobalt_mirage" list=rassomware

#_blackcat_rassomvare
add address=Av3TorUniqueHiddenWebAddress.onion comment="jan_22 blackcat" list=rassomware
add address=141.136.44.54 comment="jan_22 blackcat" list=rassomware
add address=support-global-it-ss.com comment="jan_22 blackcat" list=rassomware
add address=hosting-global-it-ss.com comment="jan_22 blackcat" list=rassomware
add address=login.live.com comment="jan_22 blackcat" list=rassomware
add address=prda.aadg.msidentity.com comment="jan_22 blackcat" list=rassomware
add address=13.107.4.50  comment="jan_22 blackcat" list=rassomware
add address=192.168.0.40  comment="jan_22 blackcat" list=rassomware
add address=192.168.0.71  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.134  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.136  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.2  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.4  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.6  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.71  comment="jan_22 blackcat" list=rassomware
add address=20.190.160.73  comment="jan_22 blackcat" list=rassomware
#===============================================================================

#===============================================================================
#_russian

add address=yandex.ru comment="yandex" list=russian
add address=5.255.192.0/18 comment="yandex" list=russian
add address=80.239.201.0/24 comment="yandex" list=russian
add address=77.88.55.0/24 comment="yandex" list=russian
add address=149.5.244.15 comment="yandex3" list=russian
add adress=87.250.224.0/19 comment="yandex_market" list=russian
add address=rambler.ru comment="rambler" list=russian
add address=81.19.64.0/19 comment="rambler" list=russian
add address=mail.ru comment="mail_ru" disabled=yes list=russian
add address=94.100.176.0/21 comment="mail_ru" disabled=yes list=russian
add address=94.100.180.200 comment="mail_ru" disabled=yes list=russian
add address=vk.com comment="vk_com" list=russian
add address=vk.ru comment="vk_ru" list=russian
add address=87.240.0.0/16 comment="vk_com" list=russian
add address=93.186.225.208 comment="vk_com" list=russian
add address=odnoklassniki.ru comment="ok_ru" list=russian
add address=217.20.0.0/16 comment="ok_ru" list=russian
add address=5.61.0.0/16 comment="ok_ru" list=russian
#===============================================================================

#===============================================================================
#_fishing

add address=rebrand.ly comment="fishing_privat24" list=fishing
add address=52.44.44.79 comment="fishing_privat24" list=fishing
#===============================================================================

#===============================================================================
#_trojan

add address=www.interlaan.com comment="trojan_downloader.js" list=trojan
add address=vaibhavastrogemology.com comment="trojan_downloader.js" list=trojan
#===============================================================================

#===============================================================================
#_script

add address=coinhive.com comment="hack_for_mikrotik" list=script
add address=www.zncar.com comment="coinhive" list=script
add address=150.129.50.87 comment="coinhive" list=script
add address=www.proveedorarm.com comment="coinhive" list=script
add address=oke.com comment="coinhive" list=script
add address=117.2.253.167 comment="coinhive" list=script
add address=77.42.159.117 comment="coinhive" list=script
add address=eugen-tautkus.de comment="coinhive" list=script
add address=contaduria.upea.bo comment="coinhive" list=script
#===============================================================================

#===============================================================================
#_compromise

add address=104.131.30.201 comment="agu_22 cisco_talos" list=compromise
add address=108.191.224.47 comment="agu_22 cisco_talos" list=compromise
add address=131.150.216.118 comment="agu_22 cisco_talos" list=compromise
add address=134.209.88.140 comment="agu_22 cisco_talos" list=compromise
add address=138.68.227.71 comment="agu_22 cisco_talos" list=compromise
add address=139.177.192.145 comment="agu_22 cisco_talos" list=compromise
add address=139.60.160.20 comment="agu_22 cisco_talos" list=compromise
add address=139.60.161.99 comment="agu_22 cisco_talos" list=compromise
add address=143.198.110.248 comment="agu_22 cisco_talos" list=compromise
add address=143.198.131.210 comment="agu_22 cisco_talos" list=compromise
add address=159.65.246.188 comment="agu_22 cisco_talos" list=compromise
add address=161.35.137.163 comment="agu_22 cisco_talos" list=compromise
add address=162.33.177.27 comment="agu_22 cisco_talos" list=compromise
add address=162.33.178.244 comment="agu_22 cisco_talos" list=compromise
add address=162.33.179.17 comment="agu_22 cisco_talos" list=compromise
add address=165.227.219.211 comment="agu_22 cisco_talos" list=compromise
add address=165.227.23.218 comment="agu_22 cisco_talos" list=compromise
add address=165.232.154.73 comment="agu_22 cisco_talos" list=compromise
add address=166.205.190.23 comment="agu_22 cisco_talos" list=compromise
add address=167.99.160.91 comment="agu_22 cisco_talos" list=compromise
add address=172.56.42.39 comment="agu_22 cisco_talos" list=compromise
add address=172.58.220.52 comment="agu_22 cisco_talos" list=compromise
add address=172.58.239.34 comment="agu_22 cisco_talos" list=compromise
add address=174.205.239.164 comment="agu_22 cisco_talos" list=compromise
add address=176.59.109.115 comment="agu_22 cisco_talos" list=compromise
add address=178.128.171.206 comment="agu_22 cisco_talos" list=compromise
add address=185.220.100.244 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.10 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.13 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.15 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.16 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.2 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.20 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.34 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.45 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.6 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.65 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.73 comment="agu_22 cisco_talos" list=compromise
add address=185.220.101.79 comment="agu_22 cisco_talos" list=compromise
add address=185.220.102.242 comment="agu_22 cisco_talos" list=compromise
add address=185.220.102.250 comment="agu_22 cisco_talos" list=compromise
add address=192.241.133.130 comment="agu_22 cisco_talos" list=compromise
add address=194.165.16.98 comment="agu_22 cisco_talos" list=compromise
add address=195.149.87.136 comment="agu_22 cisco_talos" list=compromise
add address=24.6.144.43 comment="agu_22 cisco_talos" list=compromise
add address=45.145.67.170 comment="agu_22 cisco_talos" list=compromise
add address=45.227.255.215 comment="agu_22 cisco_talos" list=compromise
add address=45.32.141.138 comment="agu_22 cisco_talos" list=compromise
add address=45.32.228.189 comment="agu_22 cisco_talos" list=compromise
add address=45.32.228.190 comment="agu_22 cisco_talos" list=compromise
add address=45.55.36.143 comment="agu_22 cisco_talos" list=compromise
add address=45.61.136.207 comment="agu_22 cisco_talos" list=compromise
add address=45.61.136.5 comment="agu_22 cisco_talos" list=compromise
add address=45.61.136.83 comment="agu_22 cisco_talos" list=compromise
add address=46.161.27.117 comment="agu_22 cisco_talos" list=compromise
add address=5.165.200.7 comment="agu_22 cisco_talos" list=compromise
add address=52.154.0.241 comment="agu_22 cisco_talos" list=compromise
add address=64.227.0.177 comment="agu_22 cisco_talos" list=compromise
add address=64.4.238.56 comment="agu_22 cisco_talos" list=compromise
add address=65.188.102.43 comment="agu_22 cisco_talos" list=compromise
add address=66.42.97.210 comment="agu_22 cisco_talos" list=compromise
add address=67.171.114.251 comment="agu_22 cisco_talos" list=compromise
add address=68.183.200.63 comment="agu_22 cisco_talos" list=compromise
add address=68.46.232.60 comment="agu_22 cisco_talos" list=compromise
add address=73.153.192.98 comment="agu_22 cisco_talos" list=compromise
add address=74.119.194.203 comment="agu_22 cisco_talos" list=compromise
add address=74.119.194.4 comment="agu_22 cisco_talos" list=compromise
add address=76.22.236.142 comment="agu_22 cisco_talos" list=compromise
add address=82.116.32.77 comment="agu_22 cisco_talos" list=compromise
add address=87.251.67.41 comment="agu_22 cisco_talos" list=compromise
add address=94.142.241.194 comment="agu_22 cisco_talos" list=compromise

add address=cisco-help.cf comment="agu_22 cisco_talos" list=compromise
add address=cisco-helpdesk.cf comment="agu_22 cisco_talos" list=compromise
add address=ciscovpn1.com comment="agu_22 cisco_talos" list=compromise
add address=ciscovpn2.com comment="agu_22 cisco_talos" list=compromise
add address=ciscovpn3.com comment="agu_22 cisco_talos" list=compromise
add address=devcisco.com comment="agu_22 cisco_talos" list=compromise
add address=devciscoprograms.com comment="agu_22 cisco_talos" list=compromise
add address=helpzonecisco.com comment="agu_22 cisco_talos" list=compromise
add address=kazaboldu.net comment="agu_22 cisco_talos" list=compromise
add address=mycisco.cf comment="agu_22 cisco_talos" list=compromise
add address=mycisco.gq comment="agu_22 cisco_talos" list=compromise
add address=mycisco-helpdesk.ml comment="agu_22 cisco_talos" list=compromise
add address=primecisco.com comment="agu_22 cisco_talos" list=compromise
add address=pwresetcisco.com comment="agu_22 cisco_talos" list=compromise
#===============================================================================

#===============================================================================
#_pen_test

add address=virustotal.com comment="virus_scan" list=pen_test
add address=nmap.org comment="nmap_scan" list=pen_test

www.metasploit.com
docs.metasploit.com
github.com/rapid7/metasploit-framework
raw.githubusercontent.com/rapid7/metasploit-omnibus
apt.metasploit.com
rpm.metasploit.com
osx.metasploit.com

www.wireshark.org
1.eu.dl.wireshark.org
github.com/wireshark/
github.com/boundary/wireshark
github.com/FreeRDP/Wireshark
github.com/davidgfnet/wireshark-whatsapp
github.com/gcla/termshark
github.com/hongch911/WiresharkPlugin

www.aircrack-ng.org
download.aircrack-ng.org
github.com/aircrack-ng
github.com/kriswebdev
github.com/chrisk44
github.com/brannondorsey
github.com/D4Vinci

www.tenable.com
github.com/elliot-bia
github.com/tenable
github.com/nccgroup
github.com/mephux
github.com/redteamsecurity

#_social_engineering_toolkit
github.com/trustedsec

#_w3af
w3af.org

#_burp_suite
portswigger.net

#_beef
beefproject.com
github.com/beefproject/

#_sql_map
sqlmap.org
sqlinjection.net
hackertarget.com
geeksforgeeks.org
github.com/sqlmapproject
github.com/codingo
github.com/difcareer
github.com/0xbug

#_os
www.kali.org
www.kali.org
cdimage.kali.org
kalilinuxtutorials.com
www.parrotsec.org
www.backbox.org
linux.backbox.org
github.com/raffaele-forte
github.com/keeganjk
github.com/trimstray
blackarch.org
pentoo.org
sourceforge.net/projects/samurai
samurai-wtf.org
samurai.sourceforge.io
sectools.org
sourceforge.net/projects/nst
www.networksecuritytoolkit.org
linux.softpedia.com/get/System/Operating-Systems/Linux-Distributions/Wifislax-21622.shtml
ww7.bugtraq-apps.com
sourceforge.net/projects/cyborghawk1
#===============================================================================

#===============================================================================
#_social

add address=162.158.0.0/15 comment="diskord" list=social
#===============================================================================

#===============================================================================
#_cert_ua

#_romcom_cuba_ransomware
add address=45.158.38.74 comment="oct_22 romcom" list=cert_ua
add address=45.87.155.99 comment="oct_22 romcom" list=cert_ua
add address=69.49.231.103 comment="oct_22 romcom" list=cert_ua
add address=notfiled.com:4444 comment="oct_22 romcom" list=cert_ua
add address=www.get.adobe.com.aspx.io comment="oct_22 romcom" list=cert_ua
add address=gov.mil.ua.aspx.io/mail/attachment/Наказ_309.pdf comment="oct_22 romcom" list=cert_ua
add address=www.get.adobe.com.aspx.io comment="oct_22 romcom" list=cert_ua
add address=gov.mil.ua.aspx.io comment="oct_22 romcom" list=cert_ua
add address=mil.ua.aspx.io comment="oct_22 romcom" list=cert_ua
add address=ua.aspx.io comment="oct_22 romcom" list=cert_ua
add address=aspx.io comment="oct_22 romcom" list=cert_ua
add address=mill.co.ua comment="oct_22 romcom" list=cert_ua
add address=notfiled.com comment="oct_22 romcom" list=cert_ua
add address=advanced-ip-scanners.com/advancedipscanner.msi comment="oct_22 romcom" list=cert_ua
add address=advanced-ip-scaner.com/download/ comment="oct_22 romcom" list=cert_ua
add address=combinedresidency.org:4444 comment="oct_22 romcom" list=cert_ua
add address=4qzm.com:4444 comment="oct_22 romcom" list=cert_ua
add address=4qzm.com comment="agu_22 romcom" list=cert_ua
add address=combinedresidency.org comment="feb_22 romcom" list=cert_ua
add address=advanced-ip-scaner.com comment="jul_22 romcom" list=cert_ua
add address=advanced-ip-scanners.com comment="jul_22 romcom" list=cert_ua

#_agenttesla
add address=ftp.ssttekstil.com comment="agu_22 agenttesla" list=cert_ua
add address=academiadutygroup.com.br/sticky.txt comment="agu_22 agenttesla" list=cert_ua
add address=sackmeister.de/node.txt comment="agu_22 agenttesla" list=cert_ua
add address=ftp.ssttekstil.com comment="agu_22 agenttesla" list=cert_ua
add address=sackmeister.de comment="agu_22 agenttesla" list=cert_ua
add address=ssttekstil.com comment="agu_22 agenttesla" list=cert_ua
add address=academiadutygroup.com.br comment="agu_22 agenttesla" list=cert_ua

#_thread_message_to_ukraine
raidforums.com

#_uac_0118_somnia
add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=mastodon.social/@ffolegg94 add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=193.43.146.42:80 add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=advanced-ip-scaner.com.vuxuancuong.com add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=advanced-ip-scanner.website/en add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=onedrive.live.com/download?cid=E8A357DC635F5F11&resid=E8A357DC635F5F11!552&authkey=AN-tOu0N0SGFnpg add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=zambeziz.com/jquery-3.3.1.min.js add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=vuxuancuong.com add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=advanced-ip-scaner.com.vuxuancuong.com add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=zambeziz.com add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=gofile.io/d/7KbRYr add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=gofile.io/d/nycrb4 add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=store1.gofile.io/download/27a73fd4-a939-4a05-9c0e-54c0c5dfef3d/1.exe add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=store3.gofile.io/download/939fad81-10ba-438e-b396-c2f42f209ab0/netscan_portable.7z add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=store8.gofile.io/download/43571707-464b-40c8-bf5e-2d9e07c554b8/Somnia_07_08_22_with_FunnySomnia.exe add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=store8.gofile.io/download/8b9f91c9-b770-4ed5-b60f-ec1dd5ca8b43/1.jpeg add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=209.222.101.65 add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=139.60.161.52 add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua
add address=193.43.146.42 add address=t.me/cheaptrains comment="nov_22 uac_0118_somnia" list=cert_ua

(пов'язані індикатори)
add address=advanced-ip-scanner.click/en comment="nov_22 uac_0118_somnia" list=cert_ua
add address=advanced-ip-scanner.site/en comment="nov_22 uac_0118_somnia" list=cert_ua
add address=www.dropbox.com/s/26gri1ashi4rydb/Ip_scanner.zip?dl=1 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=advanced-ip-scanner.click comment="nov_22 uac_0118_somnia" list=cert_ua
add address=advanced-ip-scanner.site comment="nov_22 uac_0118_somnia" list=cert_ua
add address=185.96.163.102:80 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=agrikoz.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=aluaadin.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=arminext.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=benokij.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=fudupdate.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=sinergil.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=softloadup.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=survefuz.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=vinergil.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=zbignef.com comment="nov_22 uac_0118_somnia" list=cert_ua
add address=139.60.161.165 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=139.60.161.167 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=139.60.161.213 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=139.60.161.47 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=139.60.161.63 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=185.170.144.217 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=185.96.163.102 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=193.43.146.39 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=5.252.22.96 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=94.232.41.105 comment="nov_22 uac_0118_somnia" list=cert_ua
add address=95.217.244.218 comment="nov_22 uac_0118_somnia" list=cert_ua
#===============================================================================
