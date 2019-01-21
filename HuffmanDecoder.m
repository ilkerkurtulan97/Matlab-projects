function d = HuffmanDecoder(c,probVector)

alphabet = ['a' 'b' 'c' 'd' 'e'];

probVector = [.4 .05 .2 .15 .2];

dict = huffmandict(num2cell(alphabet), probVector);

d = huffmandeco(c,dict);

end

