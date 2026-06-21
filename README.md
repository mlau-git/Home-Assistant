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
- run several other Containers and VMs (Pihole, NGNIX, beszel, etc.) in parallel, an a single mini-PC

Home Assistant OS needs far more memory than a docker container, but that's worth it (and not a problem on my 32GB mini-PC)

## Customizations & Integrations
I've successfully added various IoT devices, improved dashboards, and configured automations

### Hardware passthrough 
HA needed Bluetooth (for some temperature and humidity sensors), so I've leveraged on the HA VM the hardware form the host 
< insert steps here>

### Mobile app 

### Remote Access

### HACS

### MQTT
I've shied away a long time before diving in MQTT.
The purpose was to get sytem info from a Linux laptop (to be displayed near all useful info I have on phones and tablets, thanks to companion app).
There are 3 steps to mkae this happe:
1. Installing and MQTT broker
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
