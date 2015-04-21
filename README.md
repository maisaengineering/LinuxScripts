LinuxScripts
============
Placehodler for various *nix handy scripts
_be sure to make this script executable with chmod +x command_

#Checks if source can reach target on a specified port over SSH. 
_remote_port_check.sh :: Reads source's user password from a file located at: ${HOME}/.secret_
- SOURCE_FILE: a file containing source hosts lists per line
- TARGET_FILE: a file containing target hosts lists per line
- REMOTE_PORT:  a port to connect on a target host machine
- USER: a SSH user account to use when connecting to source VM
_be sure to make this script executable with chmod +x command_


#Remote host login script using expect/tcl. Sudo with password auto type.
_nopass.exp :: Automates the process of switching user once on remote host_

```shell
./nopass.exp REQUIRED_REMOTE_HOSTNAME OPTIONAL_REMOTEHOST_USER OPTIONAL_REMOTE_COMMAND
```
- PASSWORD: replace this variable with your remote host password (hard coded in script)
- REQUIRED_REMOTE_HOSTNAME: remote host name (required)
- OPTIONAL_REMOTEHOST_USER: switch to this user once logged to remote VM (defaults to script running user)
- OPTIONAL_REMOTE_COMMAND: executes command on remote VM as OPTIONAL_REMOTEHOST_USER
_be sure to make this script executable with chmod +x command_
