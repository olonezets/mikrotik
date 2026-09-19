#================================================================================================================
#for a check internet by ping and chenge distance if doesn't work (cycle of 30 seconds)
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

#================================================================================================================
#for a check internet by ping and chenge distance if doesn't work 
#================================================================================================================

:local date [/system/clock/get date]
:local time [/system/clock/get time]
:local stamp "$date $time"

:local providers {"ukrtelekom"; "express"; "starlink"}
:local pingnames {"wan3"; "wan2"; "wan1"}
:local pingsources {"37.53.72.248"; "192.168.3.5"; "192.168.1.215"}
:local pingtargets {"1.1.1.1"; "9.9.9.9"; "8.8.8.8"}

:local distenebl {1; 2; 3}
:local distdisabl {10; 20; 30}
:local pingcount 3

:for i from=0 to=([:len $pingnames]-1) do={

    :local prov [:pick $providers $i]
    :local name [:pick $pingnames $i]
    :local src [:pick $pingsources $i]
    :local dup [:pick $distenebl $i]
    :local ddown [:pick $distdisabl $i]

    #:put "$prov:"
    #:put "$name"

    :local dhcpid [/ip/dhcp-client/get $name default-route-distance]
    #:put "$dhcpid"

    # Общий результат проверки WAN
    :local pingok 0

    # Проверяем все targets
    :for j from=0 to=([:len $pingtargets]-1) do={

        :local tgt [:pick $pingtargets $j]
        :local pingresult [/ping $tgt src-address=$src count=$pingcount]

        # Если хотя бы один target отвечает
        :if ($pingresult > 0) do={
            :set pingok 1
        }
    }

    # =========================================
    # INTERNET WORKING
    # =========================================

    :if ($pingok = 1) do={

        # Если distance уже рабочая
        :if ($dhcpid = $dup) do={

            #:put "Attention: internet from $prov WORKED at: $stamp"

        } else={

            #:put "Attention: internet from $prov RESTORE at: $stamp"
            :log warning "Attention: internet from $prov RESTORE at: $stamp"
            /ip/dhcp-client/set $name default-route-distance=$dup

        }

    # =========================================
    # INTERNET NOT WORKING
    # =========================================

    } else={

        # Если distance ещё рабочая
        :if ($dhcpid = $dup) do={

            #:put "Attention: internet from $prov DISABLED at: $stamp"
            :log warning "Attention: internet from $prov DISABLED at: $stamp"
            /ip/dhcp-client/set $name default-route-distance=$ddown

        } else={

            #:put "Attention: internet from $prov ALLREDY DISABLED at: $stamp"

        }
    }

    #:put "$src"
    #:put "===================="
}

#================================================================================================================
