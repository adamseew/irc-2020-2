#!/bin/bash

gnuplot -e "
	set term qt size 320,280;
	set auto x;
	set yrange [0:6000];
	set ytics 6000/3 font 'Times,11';
	set ytics ('0' 0, '3' 3000, '6' 6000);
	set grid ytics;
	set ylabel \"Energy (kJ)\" font 'Times,11' offset 0,0;
	set xlabel \"FPS\" font 'Times,11' offset 0;
	set style data histogram;
	set style fill   solid 0.50 border;
	set xtics border in scale 0,0 nomirror font 'Times,11';
	set key invert;
	set key font 'Times,8';

	plot '_m2l_landing.csv' u 2:xtic(1) ti 'Total' lc rgb 'gray50', '' u 3 ti 'CPU' lc rgb 'gray10', '' u 4 ti 'GPU' fillstyle pattern 0 lc rgb 'black';

	pause -1
"

