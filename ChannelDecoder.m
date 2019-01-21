function d = ChannelDecoder(y, L)

d = MajorityDecoder(y, L);,

end

[noe ber] = biterr(x,y);


for i=1:1:N
    
    if b(i) ~= b_hat(i)
        
        noe = noe + 1
        
        bitErrorMatrix(i) = noe / i
        
    end
    
    
    bitErrorMatrix(i) = noe / i
        
    
        
end


display(noe)

display(bitErrorMatrix)

plot(1:1:N,bitErrorMatrix)
