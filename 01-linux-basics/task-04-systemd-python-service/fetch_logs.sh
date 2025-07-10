#!/bin/bash

journalctl -u myscript.service -n 50 > output.log
echo "Logs saved to output"
