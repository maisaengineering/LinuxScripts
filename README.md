LinuxScripts
============
Placehodler for various *nix handy scripts

#remote_port_check.sh
_be sure to make this script executable with chmod +x command_
*Check if source can reach target on a specified port over SSH. Reads source's user password from a file located at: ${HOME}/.secret*
- SOURCE_FILE: a file containing source hosts lists per line
- TARGET_FILE: a file containing target hosts lists per line
- REMOTE_PORT:  a port to connect on a target host machine
- USER: a SSH user account to use when connecting to source VM
_be sure to make this script executable with chmod +x command_

#nopass.exp
*Remote host login script using expect/tcl.*
**automates a process of switching user once on remote host**
- PASSWORD: replace it with your remote host password

```shell
./nopass.exp REQUIRED_REMOTE_HOSTNAME OPTIONAL_REMOTEHOST_USER OPTIONAL_REMOTE_COMMAND
```

- REQUIRED_REMOTE_HOSTNAME: remote host name (required)
- OPTIONAL_REMOTEHOST_USER: switch to this user once logged to remote VM (defaults to script running user)
- OPTIONAL_REMOTE_COMMAND: executes command on remote VM as OPTIONAL_REMOTEHOST_USER
_be sure to make this script executable with chmod +x command_
