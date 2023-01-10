Array.prototype.myEach = function (callback) {
  for (let i = 0; i < this.length; i++) {
    callback(this[i]);
  }
};

[1, 2, 3].myEach(function (ele) {
  console.log(`the square of ${ele} is ${ele * ele}`);
});

Array.prototype.myMap = function (callback) {
  let mappedArray = [];

  this.myEach(function (ele) {
    mappedArray.push(callback(ele));
  });

  return mappedArray;
}[(1, 2, 3)].myMap(function (ele) {
  ele * ele;
});

function add(x, y) {
  return x + y;
}

function sqrt(x) {
  return Math.sqrt(x);
}

function calculator(operationCallback, num1, num2) {
  return operationCallback(num1, num2);
}

function sumTwoOperations(cb1, cb2, num1, num2) {
  let result1 = cb1(num1, num2);
  let result2 = cb2(num1, num2);
  return result1 + result2;
}

function Cat(name, owner) {
  this.name = name;
  this.owner = owner;
}

Cat.prototype.cuteStatement = function () {
  return `${this.owner} loves ${this.name}!`;
};

Cat.prototype.meow = function () {
  return "meow";
};

const fluff = new Cat("Fluff", "Kyle");

fluff.meow();

class Cat {
  constuctor(name, owner) {
    this.name = name;
    this.owner = owner;
  }
  cuteStatement() {
    return `${this.owner} loves ${this.name}!`;
  }
  meow() {
    return "mewo";
  }
}

// Ways to call a function:

function functionThis() {
  console.log(this);
}

// Function style
functionThis();

// Constructor style:

function Fish(name) {
  this.name = name;
  console.log(this);
}

const f = new Fish("Frank");

// Method style
Fish.prototype.thisChecker = function () {
  console.log(this);
};

f.thisChecker();

function Cat(name) {
  this.name = name;
}

Cat.prototype.meow = function () {
  console.log(`${this.name} says meow`);
};

function Dog(name) {
  this.name = name;
}

Dog.prototype.bark = function () {
  console.log(``);
};

const bonzo = new Cat("Bonzo");
// const fluff = new Dog("Fluff");

detachedMeow = Cat.prototype.meow.bind(bonzo);

const detachedBark = Dog.prototype.bark.bind(bonzo);

Dog.prototype.sniff = function (otherThing) {
  console.log(`${this.name} sniffs ${otherThing.name}`);
};

Dog.prototype.sniff.call(bonzo, fluff);
// that should be the same as...

// in this case the "this" loses it's context
function timesDo(num, cb) {
  for (let i = 0; i < num; i++) {
    cb();
  }
}

// so you use the bind method to use the callback in this case ^^ to get the method to do the thing...

const boundMeow = bonzo.meow.bind(bonzo);

timesDo(3, boundMeow);

function boilEgg(egg) {
  console.log("Putting egg in pot...");
  console.log("Adding water to pot...");
  console.log("Turning on stove...");

  // This is an example of synchronous code, because it will block the rest of the program
  // from running until the egg has finished boiling.
  const interval = setInterval(() => {
    console.log("Still boiling...");
  }, 1000);

  setTimeout(() => {
    console.log("Egg is done!");
    clearInterval(interval);
  }, 10000);

  console.log("Egg will be done in 10 seconds.");
}

boilEgg("egg");

const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

const response = rl.question("What do you think of JS?", (answer) => answer);
console.log(`thank ou for your valueable feedback: ${response}`);

const truth = rl.questiion(
  "What do you really think of js",
  (answer) => answer
);

console.log(`you said ${truth}, thank you for your honesty.`);
rl.close();
