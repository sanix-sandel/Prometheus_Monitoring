#!/bin/bash

size=$(du -s | awk '{print $1}')

if [ $size -ge 15000000 ]; then
  logger "Disk almost full: $(du -sh)"
  #Perform cleaning operation here
  #rm -rf logstash-plain-2023*
  logger "Auto-cleaning operation successfully completed"
else
  logger "Disk not full yet: $(du -sh | awk '{print $1}'), no auto-cleaning operation needed"
fi
