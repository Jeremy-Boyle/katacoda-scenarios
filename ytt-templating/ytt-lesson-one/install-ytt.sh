
#!/bin/bash
mkdir -p /root/yaml
wget https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.33.0/ytt-linux-amd64 -O /usr/local/bin/ytt
chmod +x /usr/local/bin/ytt
wait 10;
echo "done" >> /root/katacoda-finished