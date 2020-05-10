%Erlang course - My first Erlang program (fst part)
%Student: Fernando A. Galicia-Mendoza
-module(first).

-export([double/1,mult/2,area/3,square/1,treble/1]).

% Function that returns the product of two numbers.
mult(X,Y) ->
    X*Y.

% Function that retunrs the double of a number.
double(X) ->
    mult(2,X).

% Function that returns the area of a triangle.
area(A,B,C) ->
    S = (A+B+C)/2,
    math:sqrt(S*(S-A)*(S-B)*(S-C)).

% Function that returns the square of a number.
square(X) ->
	mult(X,X).

% Function that returns the treble of a number.
treble(X) ->
	mult(3,X).