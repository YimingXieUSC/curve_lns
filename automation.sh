#!/bin/bash
echo "Running Experiments: Grid Collision"

name="random-32-32-10"
map="/home/trojan/Desktop/curve/MAPF-LNS2/maps/$name.map"
scen1="even"
scen="/home/trojan/Desktop/curve/MAPF-LNS2/scen-$scen1/$name-$scen1"
output="/home/trojan/Desktop/curve/MAPF-LNS2/$name/GRID/$name-$scen1"
sid=0
time=60
w=1.05

for n in $(seq 10 10 50)
do
    for i in $(seq 1 1 2)
    do
        echo "$n agents on instance $name-$scen1-$i  w=$w"
        /home/trojan/Desktop/curve/MAPF-LNS2/lns -m $map -a $scen-$i.scen -k $n -o $output-$n-$w-$sid-GRID.csv -t $time
    done
done