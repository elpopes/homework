// Write a function titleize that takes an array of names and a function (callback). titleize should use Array.prototype.map to create a new array full of titleized versions of each name - titleize meaning "Roger" should be made to read "Mx. Roger Jingleheimer Schmidt". Then pass this new array of names to the callback, which should use Array.prototype.forEach to print out each titleized name.

function titleize(names, callback) {
  let titleized = names.map((name) => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
}

titleize(["Mary", "Brian", "Leo"], printCallback);

// First, write a constructor function for an elephant. Each elephant should have a name, height (in inches), and array of tricks in gerund form (e.g. "painting a picture" rather than "paint a picture").

// Next, write a few prototype functions that will be shared among all elephants:

// Elephant.prototype.trumpet: should print "(name) the elephant goes 'phrRRRRRRRRRRR!!!!!!!'"
// Elephant.prototype.grow: should increase the elephant's height by 12 inches
// Elephant.prototype.addTrick(trick): add a new trick to their existing repertoire
// Elephant.prototype.play: print out a random trick, e.g. "(name) is (trick)!"
// Hint: look up some JS Math methods!
// Make sure to create an elephant and test all of these functions out on them method style!

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  let trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${trick}!`);
};

let ellie = new Elephant("Ellie", 185, [
  "giving human friends a ride",
  "playing hide and seek",
]);

// Now let's create a function called paradeHelper that we'll use to have an elephant parade. It should take a single elephant as an argument; this way, we can pass it as a callback to forEach when called on our herd. Make sure to store it as a property on the Elephant object. You can populate it with any console.log statement you want to build your parade (e.g., "___ is trotting by!").

function paradeHelper(elephant) {
  console.log(`${elephant.name} is trotting by!`);
}

// Let's make a function dinerBreakfast. Ultimately, we want it to return an anonymous closure, which we will be able to use to keep adding breakfast foods to our initial order.

// Hints:

// order should be initialized to a starting order (e.g., scrambled eggs and bacon) before the anonymous function can do its work.
// The closure should capture/close over order
// What should the return value of dinerBreakfast be?
// Which function should take in the additional food as an argument?

function dinerBreakfast() {
  let order = "I would like cheesy scrambled eggs please";
  console.log(order);
  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please`;
    console.log(order);
  };
}
