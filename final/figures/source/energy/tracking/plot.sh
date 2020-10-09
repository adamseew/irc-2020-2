#!/bin/bash

gnuplot -e "
    set term qt size 320,320;
    unset title;
    set datafile separator ',';
	set dgrid3d 25,25 gauss 1.5;
	set view map;
	set pm3d at b;
	set palette gray;
	set grid ytics,xtics,ztics;
    set xrange [0.1:4.0];
	set xtics (0.1,1,2.5,4) center offset 0,-0.42 font '11';
    set yrange [0.5:10.0];
	set ytics (0.5,3,5.5,8,10) center offset 0,-0.7 font '11';
	set ylabel 'nfold rate (FPS)' rotate parallel font '11' offset 0.8,-0.7;
	set xlabel 'darknet (FPS)' rotate parallel font '11' offset -1.5,-1;
	set zlabel 'Power (W)' rotate by 90 font '11' offset 1.5,0;
	set zrange [3:7];
	set ztics 3,2,9 font '11';
	set xyplane 0.02;
	set view 61,297,1;
	splot 'plot_data_power.csv' w l notitle lc rgb '#000000';
    pause -1
"

