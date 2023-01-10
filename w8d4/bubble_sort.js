const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function askIfGreaterThan(el1, el2, callback) {
  rl.question(`Is ${el1} greater than ${el2}? (yes/no)`, (answer) => {
    if (answer === "yes") {
      callback(true);
    } else {
      callback(false);
    }
    rl.close();
  });
}
