function freq = calculatingRunningFreq(y)





a = zeros(1,length(y));

finalFrequency = zeros(1,length(y));

n=1;

while n<(length(y)+1)
    
    if (y(n) == 1)
        
        a(n) = 1
        
    end
    
    finalFrequency(n) = sum(a) / n ;
    
    n = n + 1;
  
   
 
end

finalFrequency

freq = plot(1:1:length(y),finalFrequency),title('Running Frequency Graph'),xlabel('Trials'),ylabel('Running freq values')

end