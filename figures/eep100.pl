set terminal epslatex size 4.0,3.0 standalone
set border lw 5
set output 'eep100.tex' 
set style line 1 lc rgb 'black' lt 1 lw 5.0 
set style line 2 lc rgb 'blue' pt 7 ps 1.5 lw 1.5 
set style line 3 lc rgb 'red' lt 1 lw 5.0 
set style line 4 lc rgb 'orange' pt 9 ps 1.5 lw 1.5 
set xtics offset 0.0,0.3 nomirror scale 1,2
set mxtics 2
set ytics offset 0.4,0.0 nomirror scale 2.0,1.0 
set lmargin 6 
set bmargin 3.0
set tmargin 1
set logscale y 
set yrange[0.3:60]
set xrange[-250:300]
set key at graph 0.88,0.93 center samplen 2
#set label 1 '$T_p = 100$ MeV' at graph 0.05,0.95
#set label 2 '\Large $\mathcal{Z} = 0.71\pm0.06$' at graph 0.45,graph 0.2
set label 3 '\Large $S(p_\text{m}$) [(GeV/c)\textsuperscript{-3}]' at screen 0.044,graph 0.5 center rotate by 90
set label 4 '\Large $3/2^+$' at graph 0.88,0.7 
set xlabel '\Large $p_m$ [MeV/c]' offset 0,0.5
plot    'eep_original2.dat' w yerrorbars ls 2 title 'Nikhef',\
        'eep-2-100.txt'  w l ls 1 title 'DOM'
