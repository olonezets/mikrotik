#===============================================================================
#_invalid_untracked

add action=drop chain=input comment=invalid connection-state=invalid,untracked
add action=drop chain=forward connection-state=invalid,untracked
#===============================================================================

#===============================================================================
#_unikast

add action=drop chain=input comment=unikast in-interface-list=wan src-address-type=!unicast
#===============================================================================

#===============================================================================
#_honeypot

add action=drop chain=forward comment=honeypot_ssh_rdp_winbox_sip src-address-list=honeypot_hacker
add action=add-src-to-address-list address-list=honeypot_hacker address-list-timeout=30d0h0m chain=input connection-state=new dst-port=22,3389,8291 in-interface-list=wan protocol=tcp
add action=add-src-to-address-list address-list=honeypot_hacker address-list-timeout=30d0h0m chain=input connection-state=new dst-port=5060 in-interface-list=wan protocol=udp
/ip firewall raw
add action=drop chain=prerouting comment=prerouting_honeypot in-interface-list=wan src-address-list=honeypot_hacker
#===============================================================================

#===============================================================================
#_bogon_for_internet

add action=drop chain=input comment=bogon in-interface-list=wan src-address-list=bogon
add action=drop chain=forward in-interface-list=wan src-address-list=bogon
add action=drop chain=output out-interface-list=wan src-address-list=bogon
#===============================================================================

#===============================================================================
#_ping

add action=reject chain=input comment=ping in-interface-list=wan protocol=icmp reject-with=icmp-host-unreachable
add action=reject chain=forward disabled=yes protocol=icmp reject-with=icmp-network-unreachable
add action=drop chain=output out-interface-list=wan protocol=icmp
#===============================================================================

#===============================================================================
#_ddos_blacklist

add action=add-src-to-address-list address-list=wan_ddos_blacklist address-list-timeout=1d chain=input comment=ddos_blacklist connection-limit=100,32 in-interface-list=wan protocol=tcp
add action=tarpit chain=input connection-limit=3,32 protocol=tcp src-address-list=wan_ddos_blacklist
#===============================================================================

#===============================================================================
#_syn_flood

add action=jump chain=forward comment=syn_flood connection-state=new jump-target=syn-protect protocol=tcp tcp-flags=syn
add action=jump chain=input connection-state=new in-interface-list=wan jump-target=syn-protect protocol=tcp tcp-flags=syn
add action=return chain=syn-protect connection-state=new limit=200,5:packet protocol=tcp tcp-flags=syn
add action=drop chain=syn-protect connection-state=new protocol=tcp tcp-flags=syn
#===============================================================================

#===============================================================================
#_port_scanner

add action=drop chain=forward comment=port_scanner src-address-list=port_scanner
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=udp psd=40,3s,2,1
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=udp psd=21,3s,3,1
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp psd=40,3s,2,1
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp psd=21,3s,3,1
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp tcp-flags=fin,!syn,!rst,!psh,!ack,!urg
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp tcp-flags=fin,syn
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp tcp-flags=syn,rst
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp tcp-flags=fin,psh,urg,!syn,!rst,!ack
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp tcp-flags=fin,syn,rst,psh,ack,urg
add action=add-src-to-address-list address-list=port_scanner address-list-timeout=30d0h0m chain=input in-interface-list=wan protocol=tcp tcp-flags=!fin,!syn,!rst,!psh,!ack,!urg
/ip firewall raw
add action=drop chain=prerouting comment=prerouting_port_scanner in-interface-list=wan src-address-list=port_scanner
#===============================================================================

#===============================================================================
#_winbox_internet

add action=drop chain=input comment=winbox_block dst-port=8291 in-interface-list=wan protocol=udp
add action=drop chain=forward dst-port=8291 in-interface-list=wan protocol=udp
add action=drop chain=input dst-port=8291 in-interface-list=wan protocol=tcp
add action=drop chain=forward dst-port=8291 in-interface-list=wan protocol=tcp
#===============================================================================

#===============================================================================
#_brut_force

add action=drop chain=input comment=brut_forse src-address-list=black_list_winbox
add action=add-src-to-address-list address-list=black_list_winbox address-list-timeout=none-dynamic chain=input connection-state=new dst-port=8291 in-interface-list=all log=yes log-prefix=black_winbox protocol=tcp src-address-list=winbox_stage_3
add action=add-src-to-address-list address-list=winbox_stage_3 address-list-timeout=1m chain=input connection-state=new dst-port=8291 in-interface-list=all protocol=tcp src-address-list=winbox_stage_2
add action=add-src-to-address-list address-list=winbox_stage_2 address-list-timeout=1m chain=input connection-state=new dst-port=8291 in-interface-list=all protocol=tcp src-address-list=winbox_stage_1
add action=add-src-to-address-list address-list=winbox_stage_1 address-list-timeout=1m chain=input connection-state=new dst-port=8291 in-interface-list=all protocol=tcp
add action=accept chain=input dst-port=8291 in-interface-list=all protocol=tcp
#===============================================================================

#===============================================================================
#_dns_flood

add action=add-src-to-address-list address-list=dns_flood address-list-timeout=none-dynamic chain=input comment=dst_dns_flood dst-port=53 in-interface-list=wan protocol=udp
add action=add-src-to-address-list address-list=dns_flood address-list-timeout=none-dynamic chain=input dst-port=53 in-interface-list=wan protocol=tcp
add action=drop chain=input src-address-list=dns_flood in-interface-list=wan
#===============================================================================

#===============================================================================
#_enstablished_related

add action=accept chain=input comment=enstabileshed_related connection-state=established,related
add action=accept chain=forward connection-state=established,related
#===============================================================================

#===============================================================================
#_other

add action=add-src-to-address-list address-list=firwall_other_in address-list-timeout=none-dynamic chain=input comment=other in-interface-list=wan
add action=drop chain=input src-address-list=firwall_other_in
add action=drop chain=forward src-address-list=firwall_other_in
add action=add-dst-to-address-list address-list=firewall_other_out address-list-timeout=none-dynamic chain=output out-interface-list=wan
add action=drop chain=output dst-address-list=firewall_other_out
#===============================================================================
