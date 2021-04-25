# Loop 
if(n%cut==0){
	png_num = png_num + 1
	filename = sprintf("png/img_%04d.png",png_num)
	time	 = sprintf("{/Times:Italic t} = %4.2f",t)
	set title time  font 'Times,18'
	set output filename
	splot u(x, y, t) lc -1
}

t = t + dt
n = n + 1

if(n <= n_max) reread
n = 0

set out