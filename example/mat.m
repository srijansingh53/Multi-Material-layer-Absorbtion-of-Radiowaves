t1=.662;
mewr1=input('enter the mew of value for reflected rays first material');
mewi1=input('enter the value of mew for incident rays for first material');
mew1=mewr1-imag(mewi1);
mewr2=input('enter the value of mew  for reflected rays for second material');
mewi2=input('enter the  value of mew for incident for seccond material');
mew2=mewr2-imag((mewi2));
absr1=input('enter  the value of epsilon for reflected rays first material');
absi1=input('enter the value of epsilon for incident rays for first material');
abs1=absr1-imag((absi1));
absr2=input('enter the value of epsilon for reflected rays for second material');
absi2=input('enter the  value of epsilon for incident for seccond material');
abs2=absr2-imag((absi2));
k1=input('enter the  value of k1');
k2=input('enter the value of k2');
disp('the vale of R02 for TE');
RT=(k2*mew1)-(mew2*k1)/(mew1*k2)+(mew2*k1);
disp(RT);
disp('the value of R02 for TM');
RM=(abs1*k2)-(abs2*k1)/(abs1*k2+abs2*k1);
disp(RM);
  
disp('the value of R2 for TE is ');
R2E=(RT-exp(-2j*k1*t1))/(1-RT*exp(-2j*k1*t1));
  
   disp(R2E);
  disp('the value for R2 for TM');
  R2M=(RM-exp(-2j*k1*t1))/(1-RM*exp(-2j*k1*t1));
  disp(R2M);
  
