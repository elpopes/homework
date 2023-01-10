// Let's write a simple setTimeout function!

// First, set a simple timeout for 5000 ms (use window.setTimeout). Pass in a callback function that calls alert('HAMMERTIME').

// Open up Chrome Devtools and copy your code into the console to test it. (Open a chrome window then press cmd + option + i. Press esc to show the console.)

// // Note: while we're waiting for our timeout, we can still scroll around the website and interact with it normally. Is setTimeout synchronous or asynchronous?

function hammerTime(time) {
  window.setTimeout(function () {
    alert(`${time} is hammertime!`);
  }, time);
}

// Now let's move over to the node environment. Create a new javascript file to run in node.

// We are going to write a simple function that asks a user if they'd like tea and biscuits. Chronologically, your function should:

// Ask the user if they'd like tea.
// console.log their response.
// Ask the user if they'd like biscuits.
// console.log their complete response: So you ${firstAns} want tea and you ${secondAns} want coffee.
// Close the reader.

const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

reader.question("Would you like some tea?", function (res) {
  console.log(`You replied ${res}.`);
  reader.question("Would you like some biscuits?", function (res2) {
    console.log(`You replied ${res2}.`);
    const firstRes = res === "yes" ? "do" : "don't";
    const secondRes = res2 === "yes" ? "do" : "don't";
    console.log(
      `So you ${firstRes} want tea and you ${secondRes} want coffee.`
    );
    reader.close();
  });
});
