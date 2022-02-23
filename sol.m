%IHN
clear all
clc

disp("Start1")
tStart = tic; 
n=1000000;

A=[];
k=1;
for i=2:n
    if(isprime(i))
        A(k)=i;
        k=k+1;
    end
end
tEnd = toc(tStart) ;

disp(["End1","time=",tEnd])


disp("Start2")
 
tStart = tic; 
it=0;


RecJe=1;
RecJs=1;
RecLen=RecJe-RecJs+1;
RecSum=0;
flag=0;

for js=1:length(A)
    if((length(A)-js+1)<=RecLen)
        disp([js,je])
        break
    end
    if(js>1 && sA-A(js-1)+2*A(RecJe)>n)
        disp([js-1,je])
        break
    end
    sA0=A(js);
    for je=js+1:length(A)
        sA=sA0+A(je);
        if(isprime(sA)&& sA<n && (je-js)>(RecJe-RecJs) )
            RecJs=js;
            RecJe=je;
            RecSum=sA;
            RecLen=RecJe-RecJs+1;
        end

        if(je<length(A) && sA+A(je+1)>=n)
            break
        end
 
        sA0=sA;

    end
end

tEnd = toc(tStart) ;

disp(["Sum=",RecSum,"Length=",RecJe-RecJs+1,"Start and End=",A(RecJs),A(RecJe),"time=",tEnd])
