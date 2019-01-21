%% HUFFMAN TREE %%

alphabet = {'a' 'b' 'c' 'd' 'e'}

prob = [0.4  0.05  0.2  0.15 0.2] %% Base probability of mass function %%

dict = huffmandict(alphabet,prob)

comp = huffmanenco(alphabet,dict)

%% Higher probability element gets the lower length of bits.