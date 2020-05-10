%Erlang course - Variables and patterns.
%Student: Fernando A. Galicia-Mendoza
-module(pattern).

-export([test_xOr/0,test_maxThree/0,test_hme/0]).

% First version of the xor.
xOr1(X,Y) -> X =/= Y.

% Second version of the xor.
xOr2(X,Y) -> not(X == Y).

% Third version of xor.
xOr3(X,Y) -> ((not X) or (not Y)) and (X or Y).

% Function that gets the maximum of three elements.
maxThree(X,Y,Z) ->
	M = max(X,Y),
	max(M,Z).

% Function that counts the repeated elements of three.
howManyEqual(X,X,X) -> 3;
howManyEqual(X,X,_) -> 2;
howManyEqual(X,_,X) -> 2;
howManyEqual(_,_,_) -> 0.

%Tests

test_xOr() ->
	not(xOr1(true,true)) and 
	xOr1(true,false) and 
	xOr1(false,true) and 
	not(xOr1(false,false)) and

	not(xOr2(true,true)) and 
	xOr2(true,false) and 
	xOr2(false,true) and 
	not(xOr2(false,false)) and

	not(xOr3(true,true)) and 
	xOr3(true,false) and 
	xOr3(false,true) and 
	not(xOr3(false,false)).

test_maxThree() ->
	(maxThree(1,2,3) == 3) and
	(maxThree(44,192,42) == 192) and
	(maxThree(666,192,42) == 666).

test_hme() ->
	(howManyEqual(34,25,36) == 0) and
	(howManyEqual(34,25,34) == 2) and
	(howManyEqual(34,34,34) == 3).