#!/bin/bash
sudo -u homeassistant /bin/bash << EOF
source /srv/homeassistant/bin/activate
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U &
EOF
exit 0
