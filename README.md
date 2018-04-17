# Raspberry Valley Volume Inspector

We are a maker community in Karlskrona, Sweden. See our site for other ideas and activities: [Raspberry Valley](https://raspberry-valley.azurewebsites.net).

Not all of us are command-line gurus and inspecting volumes in our Docker projects can be a challenge.

This is a very small and simple utility which allows you to view volumes and if needed, modify settings within. It is aimed at our users who want to use our Docker images (and linked volumes) without the need to learn the internals.

## Docker Image

Our Docker image is based on [alpine 3.6](https://hub.docker.com/_/alpine/), a minimal Linux image (under 4MB). This image is enhanced with basic tools to browse and view/edit data inside data volumes. Data volumes are linked to the home directory of the *Volume Inspector*. Total size is roughly 19MB.

The image contains also the following tools:

* [Midnight Commander](http://midnight-commander.org/) - a GNU visual file manager. Those of you who have been using *Norton Commander* become immediately power users
* [Nano Editor](https://www.nano-editor.org/) - A lightweight GNU text editor. We chose it simply because our makerspace users have it as a main text editor on Raspberry Pi

## Getting the Inspector

You can pull the *Inspector* from our Raspberry Valley Docker Hub. Simply type the following:

```bash
docker pull raspberryvalley/volume-inspector
```

## Building your own Inspector

If you don't want to use our pre-made image, simply build your own. This is a sign of sanity: be careful about using 3rd party images: a bit of paranoia helps.

To build your own image, follow the steps below:

* clone this repository
* Open up PowerShell (or the command prompt) and navigate to the repository folder (where the Dockerfile is located)
* Update/modify the Dockerfile to your liking, then invoke the build command:

```bash
docker build -t "raspberryvalley/volume-inspector" .
```

## Using the Inspector

To use the *Inspector*, first locate the Docker volume you wish to inspect. To list volumes, simply type:

```bash
docker volume ls
```

You can use some command-line parameters to fine-tune the output, but all the data is in the simple command described above.

Once you have identified the name of the volume of interest, run our *Inspector* (substitute 'YourVolumeName' with the volume name you have found in the step above):

```bash
docker run --rm -it -v YourVolumeName:/home raspberryvalley/volume-inspector
```

*Volume Inspector in action (looking at Mosquitto configuration files)*:
![Inspector in Action](img/Inspector-in-Action.jpg)

You are basically creating a temporary container (it will be removed after use due to the '--rm' switch), which maps 'YourVolumeName' to the home directory of Alpine, and which launches the Midnight commander to inspect and edit files.

To close *Inspector* (and delete the container), simply type

```bash
exit
```

## PowerShell Script for Inspector

to simplify life even more, use our Powershell script. Simply copy to a place which is on your path, and then in powershell, type:

```bash
volume-inspector.ps1
```

The script will first list all the volumes available, then prompt you for the volume name you wish to inspect, and finally launch the Docker image of Inspector.

*PowerShell Script for Volume Inspector*:
![Powershell script in action](img/Inspector-PowerShell.jpg)

## Powershell Script for Volume Backup

As a bonus, we're adding a script to backup the volume content to your host machine. Simply run the script **volume-backup.ps1** to copy all content from a given volume to your host machine.

## Links

* [Volume Inspector on Docker Hub](https://hub.docker.com/r/raspberryvalley/volume-inspector/)
* [Volume Inspector on Github](https://github.com/raspberryvalley/docker-volume-inspector) (this repository)

Raspberry Valley makerspace links

* [Raspberry Valley](https://raspberry-valley.azurewebsites.net) - Other things we make and do
* [Raspberry Valley on Twitter](https://twitter.com/RaspberryValley)
* [Raspberry Valley on Github](https://github.com/raspberryvalley)
* [Raspberry Valley Docker Hub Images](hub.docker.com/r/raspberryvalley/)
