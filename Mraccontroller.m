function out = Mraccontroller(in)
r = in(1);
phi = in(2:4)
q = in(5)

delta = phi(1)*q+phi(2)*r-phi(3)*tanh((360/pi)*q)

out = delta; 