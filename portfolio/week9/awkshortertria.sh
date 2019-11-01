#!/bin/bash

exec ../week6/triangle.sh | awk 'begin{FS=" "}{ printf $7 " : " $8 "  " $10 " : " $11 " Area : " $13 "\n"  }'