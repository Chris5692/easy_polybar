#!/bin/bash

## You will need the package lm_sensor and configure it with sensor-detect as root.

sensors | awk '/^Package id 0:/ {print $4}' 
