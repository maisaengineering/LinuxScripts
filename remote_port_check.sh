#!/usr/bin/expect
set fid [open ~/.secret]
set password [read $fid]
close $fid

set port ${REMOTE_PORT}
set usr ${USER}

set sourcef [open ${SOURCE_FILE}]
set sourcef_data [read $sourcef]
close $sourcef
set source_buffer [split $sourcef_data "\n"]
foreach source $source_buffer {
  set src_len [string length $source]
  if {$src_len == 0} {
    continue
  }

  set targetf [open ${TARGET_FILE}]
  set targetf_data [read $targetf]
  close $targetf
  set target_buffer [split $targetf_data "\n"]
  foreach target $target_buffer {
    set target_len [string length $target]
    if {$target_len == 0} {
      continue
    }

    puts "$source ---> $target"
    spawn /usr/bin/ssh -q -o "StrictHostKeyChecking no" $usr@$source -t "nc -z $target $port|grep -i '$port' && echo 'PASS' || echo 'FAIL'"
    set spid $spawn_id
    set pid [exp_pid]

    puts "Spawn id = $spawn_id"
    expect {
      "*?assword:*" {
        send $password
        interact
      }
    }
    exec kill -9 $pid
  }
}
