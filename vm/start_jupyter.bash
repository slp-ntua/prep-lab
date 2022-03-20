#!/usr/bin/env bash

#####################################################################################################
# START JUPYTER IN THE SHARED FOLDER ################################################################
#####################################################################################################

echo "Killing running jupyter servers"
kill $(pgrep jupyter) || echo "no servers found"

cd /vagrant
PATH=${HOME}/miniconda3/bin jupyter notebook --ip 0.0.0.0 --port 8888 --NotebookApp.custom_display_url=http://127.0.0.1:8888 |& tee /tmp/jupyter_log.txt
