#!/bin/bash
echo "Running Experiments: Grid Collision"

name="random-32-32-20"
map="/home/trojan/Desktop/curve/MAPF-LNS2/maps/$name.map"
scen1="random"
scen="/home/trojan/Desktop/curve/MAPF-LNS2/scen_$scen1/$name-$scen1"
output="/home/trojan/Desktop/curve/MAPF-LNS2/$name/GRID.csv-LNS/$name-$scen1"
sid=0
time=60
w=1.02

echo "$n agents on instance $name-$scen1-$i  w=$w $scen-$i.scen"
echo "destination: "
/home/trojan/Desktop/curve/MAPF-LNS2/lns -m $map -a $scen-$i.scen -k $n -o $output-$n-$w-$sid-GRID.csv -t $time

# for n in $(seq 20 20 100)
# do
#     for i in $(seq 1 1 25)
#     do
#         echo "$n agents on instance $name-$scen1-$i  w=$w $scen-$i.scen"
#         echo "destination: "
#         /home/trojan/Desktop/curve/MAPF-LNS2/lns -m $map -a $scen-$i.scen -k $n -o $output-$n-$w-$sid-GRID.csv -t $time
#     done
# done


# name="random-32-32-20"
# map="/home/trojan/Desktop/curve/MAPF-LNS2/maps/$name.map"
# scen1="even"
# scen="/home/trojan/Desktop/curve/MAPF-LNS2/scen_$scen1/$name-$scen1"
# output="/home/trojan/Desktop/curve/MAPF-LNS2/$name/GRID.csv-LNS/$name-$scen1"
# sid=0
# time=60
# w=1.02

# for n in $(seq 20 20 100)
# do
#     for i in $(seq 1 1 25)
#     do
#         echo "$n agents on instance $name-$scen1-$i  w=$w $scen-$i.scen"
#         echo "destination: "
#         /home/trojan/Desktop/curve/MAPF-LNS2/lns -m $map -a $scen-$i.scen -k $n -o $output-$n-$w-$sid-GRID.csv -t $time
#     done
# done

