# k8s-mc-server
A minecraft server on kubernetes

# How does it work?

This set of files allows you to create a minecraft server on kubernetes. It pulls down a Alpine Linux container, installs OpenJDK and runs the minecraft server.

# How to use

1. Go into the mc.yaml file and set your host path that will be used for the server to store files
2. grab a server jar like Paper, Magma, Purpur, etc. you can use the update script and use the server providers URL to download it
3. move the shell files to your host folder
4. Watch your server soar by doing kubectl apply -f mc.yaml.

# Q&A / Troubleshooting
Q: sessioncheck.sh isn't deleting world session files
A: check your world folder name.

Q: can I use a load balancer instead of nodeport?
A: yes, just change the service type at the bottom at mc.yaml and the default port for minecraft is 25565.

Q: what the heck are all these flags doing in start.sh?
A: https://docs.papermc.io/paper/aikars-flags
also A: these are for optimization.
