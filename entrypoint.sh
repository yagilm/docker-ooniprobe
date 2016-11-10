#!/bin/sh

# We want ooniprobe to listen everywhere, not only localhost so user will be able to access it from the host machine
echo 'advanced:' >> /var/lib/ooni/ooniprobe.conf
echo '   webui_port: 8080' >> /var/lib/ooni/ooniprobe.conf
echo '   webui_address: "0.0.0.0"' >> /var/lib/ooni/ooniprobe.conf

# Start ooni-probe
/usr/bin/ooniprobe-agent start

# Maybe not the cleanest way to keep container running..
sh
