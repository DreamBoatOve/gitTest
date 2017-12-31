# Initial Condition: 
#	r1=r2=0.5 N1=N2=100
#	Boundary conditions: P1(N1,0)
#	Competitiveness: c1=0.4 c2=2.5
# 	h=0.1
import matplotlib.pyplot as plt

r1 = 0.5
r2 = 0.5
N1 = 100
N2 = 100
c1 = 0.4
c2 = 2.5
h  = 0.1
# x1 = 50.0
# x2 = 50.0
x1 = input('Input the initial number of x1:')
x1 = int(x1)
x2 = input('Input the initial number of x2:')
x2 = int(x2)

def x1Slope(x1,x2):
	res = r1*x1*(1-x1/N1-c1*x2/N2)
	# print('x1_slope =',res)
	return res 

def x2Slope(x1,x2):
	res = r2*x2*(1-x2/N2-c2*x1/N1)
	# print('x2_slope =',res)
	return res

def itr(x1,x2):
	k1 = x1Slope(x1,x2)
	k2 = x2Slope(x1,x2)
	x1 = k1*h + x1
	x2 = k2*h + x2
	return x1,x2

def u(x):
	return -N2*x/(N1*c1)+N2/c1

def l(x):
	return N2-x*N2*c2/N1

l1 = []
l2 = []
con = True
count = 0
while(con):
	l1.append(x1)
	l2.append(x2)
	ori = x2
	x1,x2 = itr(x1,x2)
	lat = x2
	count += 1
	if(abs(lat - ori) < 0.01):
		# print('abs =',abs(lat - ori))
		con = False
print('After ',count,' times iteration')

# Boundaries
upp = []
low = []
cor = []
for x in range(1000):
	cor.append(h*x)
	upp.append(u(h*x))
	low.append(l(h*x))

# Draw Plot
plt.title("Amount of X1 X2")
plt.xlim(xmax=100,xmin=0)
plt.ylim(ymax=100,ymin=0)
plt.xlabel("x1")
plt.ylabel("x2")
plt.plot(l1,l2,'ro')
plt.plot(upp,cor,'ys-')
plt.plot(low,cor,'go')
plt.show()