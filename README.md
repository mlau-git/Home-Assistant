# Home-Assistant
My journey with Home Assistant

## starting in 2022
Cannot remember exactly how I first heard about Home Assistant, and why I started to explore it.Things began in 2022. At the time, I was testing a Raspberry Pi 2B, and disovering exciting things I could do on this tiny device, with only 8GB of RAM.
At the time, I had picked docker to run a **container** on the Raspberry Pi OS (close to Debian).
I was very impressive by the flexibility (and very low memory footprint) of containers.
I've tried a couple of IoT devices, but did not push too far 

## rebooting with a robust architecture in 2025
When I decided I needed a real playground for my homelab, I searched the best architecture.
Running both Proxmox (PVE) and TrueNAS was clearly a far better approach, since I could:
- run Home Assistant OS as a VM (benefiting from all the in-app upgrades)
- have secured snapshots/backups (it did save me several times, with a quick restore -- after my latest improvements... broke the env 😉)
- run several other Containers and VMs (Pi.hole, NGNIX, etc.) in parallel, an a single mini-PC

Home Assistant OS needs far more memory than a docker container, but that's worth it (and not a problem on my 32GB mini-PC)

## Customizations & Integrations
I've successfully tweaked many integrations.

### HACS

### MQTT
(to be ocntinued)
