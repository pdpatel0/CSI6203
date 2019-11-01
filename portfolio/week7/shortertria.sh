#!/bin/bash

exec ../week6/triangle.sh | sed 's/The area for a triangle with/ /; s/and/ /; s/is/ Area/;'