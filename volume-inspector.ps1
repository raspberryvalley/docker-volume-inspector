# Raspberry Valley Docker Volume Inspector Launcher

Write-Host 
"Docker Volume Inspector Launcher
===========================================
This script lists all local Docker volumes and launches 
the Raspberry Valley volume Inspector.

* Raspberry Valley Makerspace site: https://raspberry-valley.azurewebsites.net
* Volume Inspector on Docker Hub: https://hub.docker.com/r/raspberryvalley/volume-inspector/
* Volume Inspector on Github: https://github.com/raspberryvalley/docker-volume-inspector

Listing available volumes on your system:

"

docker volume ls -q

Write-Host

$volumeName = Read-Host -Prompt 'Enter Volume Name to inspect (CTRL-C to quit)'

$command = "docker run --rm -it -v ${volumeName}:/home raspberryvalley/volume-inspector"
iex $command