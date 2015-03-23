#!/bin/bash

# Script Comum para Todas as Redes Radio

# Remove os logs mais antigos que 7 dias
find /var/log/radio/ -name "*.zip" -mtime +7 -exec rm {} \;
find /var/log/temp_audiencia/ -name "*.zip" -mtime +7 -exec rm {} \;
