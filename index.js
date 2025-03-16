// Import Tau Prolog core and create a session
const pl = require("tau-prolog");
const session = pl.create(1000);
const show = x => console.log(session.format_answer(x));

// Get Node.js argument: node ./script.js item
const item = process.argv[2];

const goal = `
    execute(s(3,ocupada),X).
    execute(s(5,ocupada),X).
`;

// Consult program, query goal, and show answers
session.consult("TrafficControl.pl", {
    success: function() {
        session.query(goal, {
            success: function() {
                session.answers(show);
            }
        })
    }
});