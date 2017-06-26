
% Verificar se existe um elemento na lista;
% param1 = list, param2 = number

exist([H|T], X):-
    H = X;
    exist(T, X).

% Concatenar duas listas;
% param1 = list, param2 = list, param3 = list

cat([], L, L).

cat([H|T], L2, [H|L3]):-
    cat(T, L2, L3).

% Adicionar um elemento no final da Lista;
% param1 = list, param2 = number, param3 = list

insert_last([], X, [X]).

insert_last([H|T], X, [H|L]):-
    insert_last(T, X, L).

% Eliminar uma elemento de uma lista;
% param1 = list, param2 = number, param3 = list

remove([H|T], H, T).

remove([H|T], X, [H|L2]):-
    remove(T, X, L2).

% Verificar o número de ocorrências de um elemento dentro de uma lista;
% param1 = list, param2 = number, param3 = qtt

qtt([], _, 0).
qtt([H|T], X, N):-
    qtt(T, X, N1),
    (H = X -> N is N1 + 1; N is N1).

% Crie um procedimento em Prolog para contar o número de elementos de uma Lista.
% param1 = list, param2 = number

size([], 0).

size([_|T], S):-
    size(T, S1),
    S is S1 + 1.

% Crie um procedimento em Prolog para eliminar os tres primeiros elementos de uma Lista.
% param1 = list, param2 = list

del3([], []).

del3([_], []).

del3([_,_], []).

del3([_,_,_|T], T).

% Crie uma função em Prolog para imprimir o último elemento de uma Lista.
% param1 = list, param2 = number

last([X], X).

last([_|T], X):-
    last(T, X).

% Crie um procedimento em Prolog para apagar o último elemento de uma lista.
% param1 = list, param2 = list

remove_last([_], []).

remove_last([H|T], [H|X]):-
    remove_last(T, X).

% Crie um procedimento em Prolog retornar o n-ésimo elemento de uma lista:
% param1 = list, param2 = index, param3 = number

nth([H|_], 0, H).

nth([_|T], P, E):-
    nth(T, P1, E),
    P is P1 + 1.

% Crie um procedimento em Prolog para retornar o menor elemento de uma Lista.
% param1 = list, param2 = number

list_min([X], X).
list_min([H|T], M):-
    list_min(T, M1),
    M1 < H -> M is M1; M is H.

% Acrescente um elemento a uma lista se ele já não estiver nela.
% param1 = list, param2 = number, param3 = list

insert_if_not_exist(L1, E, L2):-
	not(exist(L1, E)) -> insert_last(L1, E, L2).

% Adicionar no inicio.
% param1 = list, param2 = number, param3 = list

insert_0(L, X, [X|L]).

