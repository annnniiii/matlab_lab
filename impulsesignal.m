function[xofn,index]= impulsesignal(sindex,lindex,rindex)
index=[lindex:rindex];
xofn =[(index-sindex)==0];
