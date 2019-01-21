function b = generateBits(N)

b = randi([0 1],1,N);

end


function x = ChannelEncoder(b)

x = RepetitionEncoder(b,L);


end


function x = RepetitionEncoder(b,L);

%% the function is taken from https://www.mathworks.com/help/matlab/ref/repelem.html %%
x = repelem(c,L);

end

function y = Channel(x)

y = BinarySymmetricChannel(x);



end

function y =  BinarySymmetricChannel(x,epsilon)


y = bsc(x,epsilon)


end

function d = MajorityDecoder(y,L)

d = mode(reshape(y,L,[]))

end

function c = Compression(d)

c = d;

end

function b_hat = Decompression(c)

b_hat = c;

end

