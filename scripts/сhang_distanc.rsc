#================================================================================================================
#for a check cycle of 30 seconds
#================================================================================================================

:local providers {""; ""; ""}
:local pingnames {"wan3"; "wan2"; "wan1"}
:local pingsources {""; ""; ""}
:local pingtargets {"1.1.1.1"; "9.9.9.9"; "8.8.8.8"}

:local distenebl {1; 2; 3}
:local distdisabl {10; 20; 30}

:local pingcount 3

:while (true) do={

    :local date [/system/clock/get date]
    :local time [/system/clock/get time]
    :local stamp "$date $time"

    :for i from=0 to=([:len $pingnames]-1) do={

        :local prov [:pick $providers $i]
        :local name [:pick $pingnames $i]
        :local src [:pick $pingsources $i]
        :local dup [:pick $distenebl $i]
        :local ddown [:pick $distdisabl $i]

        :local dhcpid [/ip/dhcp-client/get $name default-route-distance]

        :local pingok 0

        :for j from=0 to=([:len $pingtargets]-1) do={

            :local tgt [:pick $pingtargets $j]
            :local pingresult [/ping $tgt src-address=$src count=$pingcount]

            :if ($pingresult > 0) do={
                :set pingok 1
            }
        }

        :if ($pingok = 1) do={

            :if ($dhcpid != $dup) do={

                /ip/dhcp-client/set $name default-route-distance=$dup
                :log warning "Internet from $prov RESTORE at $stamp"
            }

        } else={

            :if ($dhcpid = $dup) do={

                /ip/dhcp-client/set $name default-route-distance=$ddown
                :log warning "Internet from $prov DISABLED at $stamp"
            }
        }
    }

    :delay 30s
}

#================================================================================================================
