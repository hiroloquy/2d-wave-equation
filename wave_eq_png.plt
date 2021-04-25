reset
 
#=================== Parameters ====================
t = 0.              # Time
dt = 0.001          # Time step [s]
N = 10              # sum[i,j=1:N]

nu = 1.             # Coefficient
n_max = 100*150     # Loop limit (Time limit: n_max*dt)
n = 0               # Counter (initialized)
cut = 10            # Decimation (frame: n_max/cut)
png_num = 0         # Counter for PNG images

#=================== Functions ====================
u(x, y, t) = 16/(pi**6)*sum[i=1:N](sum[j=1:N]4*sin((2*i-1)*pi*x)*sin((2*j-1)*pi*y)*cos(nu*sqrt((2*i-1)**2+(2*j-1)**2)*pi*t)/((2*i-1)*(2*j-1))**3)

#=================== Setting ====================
set terminal png enhanced font "Times" 20 size 986, 554
system 'mkdir png'
set tics font 'Times,18'
set nokey
set grid
set xr[0:1.]
set yr[0:1.]
set zr[-0.08:0.08]
set xl "x" font"Times:Italic, 22"
set yl "y" font"Times:Italic, 22"
set zl "u" font"Times:Italic, 22"
set view 40, 30, 0.85, 2.
set pm3d
set cbrange[-0.08:0.08]
set palette defined ( 0 '#000090',1 '#000fff',2 '#0090ff',3 '#0fffee',\
                      4 '#90ff70',5 '#ffee00',6 '#ff7000',7 '#ee0000',8 '#7f0000')
call "make_png.plt"