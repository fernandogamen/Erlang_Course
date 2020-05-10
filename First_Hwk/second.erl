%Erlang course - My first Erlang program (snd part)
%Student: Fernando A. Galicia-Mendoza
-module(second).

-import(first,[square/2]).

-export ([sizeHyp/2,areaRAT/2,perimeterRAT/2]).

% Function that gives the size of the hypotenuse of a 
% right-angled triangle given the lengths of the two 
% other sides.
sizeHyp(C1,C2) ->
	S = first:square(C1)+first:square(C2),
	math:sqrt(S).

% Function that returns the area of a right-angled 
% triangle.
areaRAT(S1,S2) ->
	(S1*S2)/2.

% Function that returns the perimeter of a right-angled 
% triangle.
perimeterRAT(S1,S2) ->
	H = sizeHyp(S1,S2),
	S1+S2+H.