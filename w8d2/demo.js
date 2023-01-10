// function scopeExample() {
//     const x = "x";
//     // if (true) will always run
//     if (true) {
//         // has access to y and x but not z
//         const y = "y";
//         {
//             const z = "z";
//         }
//     }
// }

function howToConst() {
  const username = "Harold";

  if (true) {
    // this is okay because it's in the codeblock
    const username = "Url";
    // strings are immutable
    console.log(username);
  }
  //doesn't have access to what's in the scope
  console.log(username);
}

function howToLet() {
  let secret = "i'm a secret cat";
  // lets can be changed
  if (true) {
    let secret = "I'm really a banana";
    console.log(secret);
  }

  console.log(secret);
}

//never use var because bad??
function howToVar() {
  var username = "Harold";

  if (true) {
    var username = "Url";

    console.log(username);
  }

  console.log(username);
}

sillyVariable = "Should I use these?";

function globalsSuck() {
  sillyVariable = "Do NOT use these";
}

//named function

console.log(square(10));

function square(number) {
  return number * number;
}

//annonymous function
const feedMe = function (food) {
  return "thanks for the " + food + "!";
};

// Es6 Arrow function expression don't get hoisted

const eatMe = (you) => `i am inside ${you}`;

// name constructor functions starting with a cap letter
function User(username, age) {
  debugger;
  this.username = username;
  this.age = age;
  // this.greet = () => "Hello!"
}

//
User.prototype.greet = function () {
  debugger;
  return `Hello my name is ${this.username}`;
};

// declare a named function that logs the argument

const arr = [1, 2, 3];

function callback(el) {
  console.log(el + "!");
}

arr.forEach(callback);

arr.forEach((el) => {
  console.log(el + "!");
});

//writing our own function that has a callback
function doMathWithNumber(number, callback) {
  return callback(number);
}

// then we invoke with anonymous function or arrow function
console.log(
  doMathWithNumber(5, (num) => {
    return num * num;
  })
);

// a closure is a function AND the connection to variables at its birth place

// can act as a private function

const feed = function () {
  const foodItems = ["Grits"];

  return function (newItem) {
    //items can only be pushed into the array
    foodItems.push(newItem);
    return `I have eaten ${foodItems.join(" and ")}`;
  };
};

const counter = () => {
  let currentCount = 0;

  return () => {
    currentCount += 1;
    return "cuurently at " + currentCount;
  };
};

const counter = () => {
  let count = 0;

  return {
    count: () => count,
    inc: () => (count += 1),
    dec: () => (count -= 1),
    reset: () => (count = 0),
  };
};
