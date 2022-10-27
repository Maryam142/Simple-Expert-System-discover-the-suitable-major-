%facts:
have(cs,l).
have(cs,g).
have(cs,c).
have(cs,d).

have(ce,l).
have(ce,mc).
have(ce,im).
have(ce,f).

have(is,d).
have(is,c).
have(is,mn).
have(is,dh).

%rules:
cs(X,Y,Z,C):- have(cs,X),have(cs,Y),have(cs,Z),have(cs,C),write('The major that might suit you is Computer Science CS').
ce(X,H,J,M):- have(ce,X),have(ce,H),have(ce,J),have(ce,M),write('The major that might suit you is Computer Engineering CE').
is(A,B,C,L):- have(is,A),have(is,B),have(is,C),have(is,L),write('The major that might suit you is information Sysem IS').

run:-
 write('Wellcome to Our Expert System Discover your Major !!'),nl,nl,nl,
%cs
 write('If you like logic? press l otherwise no'), read(X),
 write('If you like creating games? press g otherwise no'),read(Y),
 write('If you like to coding? press c otherwise no'),read(Z),
 write('If you like design? press d otherwise no'),read(C),
    
  %is
 write('If you like management? write mn otherwise no'), read(A),
 write('If you like communicate? press c otherwise no'),read(B),
 write('If you like data handling? press dh otherwise no'),read(L),
 
    
 %ce
 write('If you like  to try to fix them with devices? press f otherwise no'),read(H), 
 write('If you like to deal with machines? write mc otherwise no'),read(J),
 write('If you like Quality improvement? write im otherwise no'),read(M),
    f(H,J,X,Y,Z,A,B,C,L,M),nl,
    write('Remember, in the end, that your determination and passion is what leads you to success in your major.').

f(H,J,X,Y,Z,A,B,C,L,M):-
 ce(X,H,J,M);
 cs(X,Y,Z,C); 
 is(A,B,C,L);
print("The major that might suit you is Unkown by our System").