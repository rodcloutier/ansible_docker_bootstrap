Set-ExecutionPolicy Unrestricted -Force

wget "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1" -outfile "ConfigureRemotingForAnsible.ps1"

.\ConfigureRemotingForAnsible.ps1
