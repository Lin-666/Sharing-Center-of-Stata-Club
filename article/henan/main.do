clear
set more off

cd d:\���ϵ�ͼ
capture shp2dta using  ha_city, data(hn_citymapdb) coor(hn_citymapcoord) genid(id) 
use `"hn_citymapdb"',clear
gen y = uniform()
format y %9.3g
spmap y using `"hn_citymapcoord"',id(id) title ("���ϵ�ͼ") label(label(NAME99) xcoord(CENTROID_X)ycoord(CENTROID_Y) )fcolor(Greens2) legenda(off)

