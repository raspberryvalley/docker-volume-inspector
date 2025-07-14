# Raspberry Valley Docker Volume Backup script

Write-Host 
"Docker Volume Backup Script (with compression)
======================================================================
This script lists all local Docker volumes and launches 
the Raspberry Valley volume Backup script. The backup is copied to the
current directory as an archive

* Raspberry Valley Makerspace site: https://raspberry-valley.azurewebsites.net
* Volume Inspector on Docker Hub: https://hub.docker.com/r/raspberryvalley/volume-inspector/
* Volume Inspector on Github: https://github.com/raspberryvalley/docker-volume-inspector

Listing available volumes on your system:

"

docker volume ls -q

Write-Host

$volumeName = Read-Host -Prompt 'Enter Volume Name to backup (CTRL-C to quit)'

$command = "docker run --rm -v ${volumeName}:/volume -v $(pwd):/backup alpine tar -cjf /backup/${volumeName}-backup.tar.bz2 -C /volume ./"
iex $command