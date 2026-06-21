# for security reasons, a virtual ens will be need to sync with MQTT
sudo apt install python3-venv
python3 -m venv ~/linux2mqtt

# start communications (make it a service to daemonize it)
~/linux2mqtt/bin/linux2mqtt   --name $HOSTNAME   --cpu=15   --vm   --temp   --du='/'   --du='/home'   --net=wlp170s0,15   --host=192.168.1.20   --username=mqtt_svc   --password=ComplexPwd   -vvvvv
