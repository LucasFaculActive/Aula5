% Esse código em Prolog calcula o fatorial. Ele é bem diferente do Java, porque a gente não fala o que fazer passo a passo. Só dizemos o que deve ser feito.

fatorial(0,1). % Caso base, fatorial de 0 é 1
fatorial(N, Resultado) :- 
    N > 0, % Se N for maior que 0...
    N1 is N - 1, % Subtrai 1 de N
    fatorial(N1, R1), % Chama a função recursivamente para calcular o fatorial de N-1
    Resultado is N * R1. % Multiplica N pelo fatorial de N-1

% Agora, esse código aqui soma todos os números de uma lista, ou seja, de uma sequência de números. Ele vai chamando a função até acabar a lista.

soma_lista([], 0). % Caso base, se a lista estiver vazia, a soma é 0.
soma_lista([H|T], Soma) :- % Se a lista tiver pelo menos um número...
    soma_lista(T, SomaRestante), % Faz a soma do resto da lista
    Soma is H + SomaRestante. % A soma é o primeiro número mais o resto da soma
