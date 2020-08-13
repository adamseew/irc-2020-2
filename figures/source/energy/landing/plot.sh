#!/bin/bash

gnuplot -e "
	set term qt size 320,280;
	set datafile separator ',';
	set border 11 lw 1;
	set auto x;
	set yrange [3.1:3.6];
	set ytics (3,10,3.20,3.30,3.40,3.50,3.60) font '11';
	set grid ytics;
	set ylabel \"Power (W)\" font '11' offset 0,0;
	set xlabel \"FPS\" font '11' offset 0;
	set y2range [80:180];
	set y2tics 20 tc lt 2;
	set y2label \"Time (s)\" font '11' offset 0,0 tc lt 2;
	set style data histogram;
	set style fill  solid 0.50 border;
	set xtics border in scale 0,0 nomirror;
	set key invert;
	set key font '8';

	plot 'plot_data.csv' u 2:xtic(1) ti 'Variable' lc rgb 'gray50', '' u 3 ti 'Fixed' lc rgb 'gray10', '' u 4 pt 7 lt 2 axis x1y2 notitle;

	pause -1
"

