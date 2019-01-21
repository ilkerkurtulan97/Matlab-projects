function c = HuffmanEncoder(b,probVector)

probVector = [0.4  0.05  0.2  0.15 0.2] %% Base probability of mass function %%


dict = huffmandict(num2cell(b), probVector)

sig = char( randsrc(1,10,[double(b); probVector]) )

comp = huffmanenco(sig,dict)

dsig = cell2mat(huffmandeco(comp,dict))

c = dsig


end
