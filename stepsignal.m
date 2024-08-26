function[xofn,index]=stepsignal(sindex,lindex,rindex)
index=[lindex:rindex];
xofn=[(index-sindex)>=0];
%sindex is the time when signal should start
%lindex and rindex - starting and ending time interval