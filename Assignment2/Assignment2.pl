:-initialization(use_module(library(csv))).
:-initialization(use_module(library(lists))).
:- discontiguous method/1.
:- dynamic(distance/3) .

:- op(1,'xfy','csv_') .

csv(INPUTFILE)
:-
(start) csv_ (INPUTFILE)
.

(start) csv_ (INPUTFILE)
:-
csv:csv_read_file(INPUTFILE,[HEADFIRST|TAILFIRST]) ,
row__to__list(HEADFIRST,HEADSECOND) ,
(loop) csv_ (HEADSECOND,TAILFIRST) 
.

(loop) csv_ (_HEADSECOND,[]) 
:-
true
.

(loop) csv_ (HEADSECOND,[ROW|TAILFIRST]) 
:-
row__to__list(ROW,ROWs) ,
lists:nth1(1,ROWs,FIRSTCITY) ,
QUERYFIRST=(lists:nth1(NTH,ROWs,DISTANCE)) ,
QUERYSECOND=(NTH > 1) ,
QUERYTHIRD=(lists:nth1(NTH,HEADSECOND,SECONDCITY)) ,
QUERY=(QUERYFIRST,QUERYSECOND,QUERYTHIRD) ,
ASSERT=assertz(distance(FIRSTCITY,SECONDCITY,DISTANCE)) ,
forall(QUERY,ASSERT) ,
ASSERTA=assertz(distance(SECONDCITY,FIRSTCITY,DISTANCE)) ,
forall(QUERY,ASSERTA) ,
ASSERTB=assertz(heuristics(FIRSTCITY,SECONDCITY,DISTANCE-200)) ,
forall(QUERY,ASSERTB) ,
ASSERTC=assertz(heuristics(SECONDCITY,FIRSTCITY,DISTANCE-200)) ,
forall(QUERY,ASSERTC) ,

(loop) csv_ (HEADSECOND,TAILFIRST)
.

row__to__list(ROW,ROWs)
:-
ROW=..[_|ROWs]
.

dosearch :-
      write('Enter depth first search or best first search'),nl,
      read(Search),
      method(Search).

method(dfs) :-
    write('Enter the source'),
    read(Source),
    write('Enter the destination'),
    read(Destination),
    append([],[Source],Open),
    finding(Open,Destination,[]).

finding([H|T],Destination,Closed):-

    add_tail(Closed,H,R),
    findall(X,distance(H,X,_),Z),remove_duplicates(Z, X),
    (
      list_member(Destination,X) ->
      add_tail(R,Destination,M),print_list(M);
      append(T,X,D),finding(D,Destination,R)
     ).

method(bfs) :-
    write('Enter the source'),
    read(Source),
    write('Enter the destination'),
    read(Destination),
    append([],[Source],Open),
    findingb(Open,Destination,[]).

findingb([H|T],Destination,Closed):-

    add_tail(Closed,H,R),
    findall(X,heuristics(H,_,X),Z),sort(Z,O),removeAll(0,O,W),check0(W,H,Destination,R,T).

check0(W,H,Destination,R,T) :-
    findall(G,heuristics(H,G,_),Z),sort(Z,X),
    (
        list_member(Destination,X) ->
        add_tail(R,Destination,M),print_list(M);
        check(W,H,Destination,R,T)
    ).
check([L|P],H,Destination,R,T):-
     findall(G,heuristics(H,G,L),F),sort(F,X),
     (
      common_elements(R,X) ->
      check(P,H,Destination,R,T);
      list_member(Destination,X) ->
      add_tail(R,Destination,M),print_list(M);
      print_list(X),append(X,T,D),findingb(D,Destination,R)
     ).  


list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

list_insert(X,L,R) :- list_delete(X,R,L).

list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

insert(X, [], [X]).
insert(X, [H|T], [H|U]):- 
    insert(X, T, U).

add_tail([],X,[X]).
add_tail([H|T],X,[H|L]):-add_tail(T,X,L).

print_list([]):-nl.
print_list([H|T]):-write(H),write(->),print_list(T).


membereq(X, [H|_]) :-
    X == H.
membereq(X, [_|T]) :-
    membereq(X, T).


common_elements([H|_], L2) :-
    membereq(H, L2).
common_elements([_|T], L2) :-
    common_elements(T, L2).      

removeAll(_, [], []).
removeAll(X, [X|T], L):- removeAll(X, T, L), !.
removeAll(X, [H|T], [H|L]):- removeAll(X, T, L ).


remove_duplicates([], []).

remove_duplicates([Head | Tail], Result) :-
    member(Head, Tail), !,
    remove_duplicates(Tail, Result).

remove_duplicates([Head | Tail], [Head | Result]) :-
    remove_duplicates(Tail, Result).