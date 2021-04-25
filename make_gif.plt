# Loop 
if(n%cut==0){
	time = sprintf("{/Times:Italic t} = %4.2f",t)
	set title time font 'Times,18'
	splot u(x, y, t) lc -1
}
t = t + dt	# update t
n = n + 1	# update n

if(n <= n_max) reread

set out