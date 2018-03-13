dat1=load('/Users/dykeswu/Desktop/GRE.txt');
day=dat1(:,3);
hour=dat1(:,4);
min=dat1(:,5);
sec=dat1(:,6);

[M,N]=size(dat1);
time=zeros(1,M);
for i=1:M
    time(i)=hour(i)+min(i)/60+sec(i)/60/60;
end

stan=4*ones(M);

plot(day,time,'b-*',day,stan,'r-');