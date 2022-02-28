#!/usr/bin/bash
set -e
julia -e 'using Franklin;Franklin.optimize(;minify=false)'
rsync -avr --exclude=".git/"  --delete-after ./__site/ /home/antineutrino/blog__site 
cd /home/antineutrino/blog__site
git add  -fA 
git commit -am "commit `date`"
git push 
