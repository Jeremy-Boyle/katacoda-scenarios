
#!/bin/bash

mkdir -p yaml
cd yaml/
wget https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.33.0/ytt-linux-amd64 -o /usr/local/bin/ytt
chmod +x /usr/local/bin/ytt