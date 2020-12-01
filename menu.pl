menu :- repeat, nl,nl,
    write(' ______________________'),nl,
    write('	Entre com uma opção:  '),nl,nl,
    write(' 1. Cadastrar produtos.'),nl,
    write(' 2. Excluir produtos.  '),nl,
    write(' 3. Atualizar produtos.'),nl,
    write(' 4. Listar produtos.   '),nl,
    write(' ______________________'),nl,
    read(Escolha), Escolha>0, Escolha =<4,
    doit(Escolha), Escolha=4, !.

doit(1):-
    write('Cadastro: '),nl,
    write('Fim operação de cadastro! '),nl, !.
doit(2):-
    write('Excluir: '),nl,
    write('Fim operação de exclusão! '),nl, !.
doit(3):-
    write('Atualizar: '),nl,
    write('Fim operação de atualização! '),nl, !.
doit(4):-
    write('Listar: '),nl,
    write('Fim operação de listagem! '),nl, !.