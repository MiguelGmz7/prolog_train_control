regla(u(1, verde), l(1, rojo)).
regla(l(1, verde), u(1, rojo)).

regla(u(6, verde), l(6, rojo)).
regla(l(6, verde), u(6, rojo)).

regla(s(1, ocupada), u(2, rojo)).
regla(s(2, ocupada), l(2, rojo)).
regla(s(3, ocupada), u(3, rojo)).
regla(s(3, ocupada), u(4, rojo)).
regla(s(4, ocupada), u(5, rojo)).
regla(s(5, ocupada), l(5, rojo)).

regla((u(3, rojo),l(3,rojo)), u(1, rojo)).
regla((u(5, rojo),l(5,rojo)), u(1, rojo)).

regla((u(3, rojo),l(3,rojo)), l(1, rojo)).
regla((u(5, rojo),l(5,rojo)), l(1, rojo)).

regla((u(2, rojo),l(2,rojo)), u(6, rojo)).
regla((u(4, rojo),l(4,rojo)), u(6, rojo)).

regla((u(2, rojo),l(2,rojo)), l(6, rojo)).
regla((u(4, rojo),l(4,rojo)), l(6, rojo)).

regla((u(2, rojo),l(2,rojo)), u(7, rojo)).
regla((u(5, rojo),l(5,rojo)), u(8, rojo)).


regla(u(3, verde), u(4, rojo)).
regla(l(3, verde), l(4, rojo)).
regla(u(2, verde), l(2, rojo)).
regla(u(3, verde), l(3, rojo)).
regla(u(4, verde), l(4, rojo)).
regla(u(5, verde), l(5, rojo)).

regla(u(1, verde), u(7, rojo)).
regla(l(1, verde), u(7, rojo)).
regla(u(6, verde), u(8, rojo)).
regla(l(6, verde), u(8, rojo)).



execute(Permise, Conclusion) :-
    regla(Permise,Conclusion).
