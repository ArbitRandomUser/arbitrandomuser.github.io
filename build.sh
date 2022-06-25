#!/usr/bin/bash
set -e
julia --project=/home/antineutrino/blog -e 'using Franklin;Franklin.optimize(;minify=false)'
rsync -avr --exclude=".git/"  --delete-after ./__site/ /home/antineutrino/blog/blog__site 
