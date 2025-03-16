// Import Tau Prolog core and create a session
const pl = require("tau-prolog");
const session = pl.create(1000);
const show = x => console.log(session.format_answer(x));

// Get Node.js argument: node ./script.js item
const item = process.argv[2];

// Program and goal
const program = `
    % fruit/1
    fruit(apple).
    fruit(banana).
    fruit(pear).

    % fruit_in/2
    fruits(Xs, X) :- member(X, Xs), fruit(X).
`;
const goal = `
    fruit(X).
`;

// Consult program, query goal, and show answers
session.consult(program, {
    success: function() {
        session.query(goal, {
            success: function() {
                session.answers(show);
            }
        })
    }
});