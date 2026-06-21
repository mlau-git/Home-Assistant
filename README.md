# Home-Assistant
My journey with Home Assistant

## Starting in 2022
Cannot remember exactly how I first heard about Home Assistant, and why I started to explore it. Things began in 2022. At the time, I was testing a Raspberry Pi 2B, and disovering exciting things I could do on this tiny device, with only 8GB of RAM.
At the time, the Pi was running Raspberry Pi OS (Debian-based AFAIK), and I had picked docker to run a **container** with Home Assistant.
I was very impressed by the flexibility (and very low memory footprint) of containers.
I've tried a couple of IoT devices, but did not push too far 

## Rebooting with a robust architecture in 2025
When I decided I needed a real playground for my homelab, I searched for the best architecture.
Running both Proxmox (PVE) and TrueNAS was clearly a far better approach, since I could:
- run Home Assistant OS as a VM (benefiting from all the in-app upgrades)
- have secured snapshots/backups (it did save me several times, with a quick restore -- after my latest improvements... broke the env 😉)
- enjoy flexibility of LVM to be able to resize disks as needed (see resize-disk.sh file)
- run several other Containers and VMs (Pihole, NGNIX, beszel, etc.) in parallel, an a single mini-PC

Home Assistant OS needs far more memory than a docker container, but that's worth it (and not a problem on my 32GB mini-PC)

## Customizations & Integrations
I've successfully added various IoT devices, improved dashboards, and configured automations

### Hardware passthrough 
My HA instance needed Bluetooth for some temperature and humidity sensors. I've set up the HA VM to leverage the hardware from the host 
< insert steps here>

### Mobile app 
The Companion app on Android works terrific (almost as efficient as browser on laptop)  

### Remote Access
When not at home, I missed all these IoT devices and automations. I've never needed Home Assistant Cloud, but successfully tried various VPN-minded tactics: WireGuard & Tailscale.

### HACS

### MQTT
I've shied away a long time before diving in MQTT.
The purpose was to get sytem info from a Linux laptop (to be displayed near all useful info I have for phones and tablets, thanks to companion app). MQTT act as bus bus where HA and the linux endpoint are connected to and communicate thru.

There are 3 steps to make this happe:
1. Installing an MQTT broker
2. Configuring Home Assitant to use this broker
3. Installing automations on my linux laptop to use MQTT to share datapoints

   
#### Installing an MQTT brober

#### Telling Home Assistant to point to MQTT brober

#### Installing 
```bash
sudo apt install python3-venv
python3 -m venv ~/linux2mqtt

~/linux2mqtt/bin/linux2mqtt   --name $HOSTNAME   --cpu=15   --vm   --temp   --du='/'   --du='/home'   --net=wlp170s0,15   --host=192.168.1.20   --username=mqtt_svc   --password=ComplexPwd   -vvvvv

```
(to be continued)
