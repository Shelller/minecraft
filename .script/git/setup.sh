#!/bin/sh

git fetch --all

git branch 'ver/1.18'
git push -u origin 'ver/1.18'
git branch 'ver/1.19'
git push -u origin 'ver/1.19'
git branch 'dat/pack'
git push -u origin 'dat/pack'
git branch 'plu/pack'
git push -u origin 'plu/pack'
git branch 'res/pack'
git push -u origin 'res/pack'
git branch 'sha/pack'
git push -u origin 'sha/pack'
git branch 'ser/core'
git push -u origin 'ser/core'

git submodule add -b 'ver/1.18' --name 'ver/1.18' 'https://github.com/shelller/minecraft' "./version/1.18"
git submodule add -b 'ver/1.19' --name 'ver/1.19' 'https://github.com/shelller/minecraft' "./version/1.19"
git submodule add -b 'dat/pack' --name 'dat/pack' 'https://github.com/shelller/minecraft' "./pack/dat/pack"
git submodule add -b 'plu/pack' --name 'plu/pack' 'https://github.com/shelller/minecraft' "./pack/plu/pack"
git submodule add -b 'res/pack' --name 'res/pack' 'https://github.com/shelller/minecraft' "./pack/res/pack"
git submodule add -b 'sha/pack' --name 'sha/pack' 'https://github.com/shelller/minecraft' "./pack/sha/pack"
git submodule add -b 'ser/core' --name 'ser/core' 'https://github.com/shelller/minecraft' "./server/core"

git submodule update --init