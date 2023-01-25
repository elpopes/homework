// Ways to call a function:
//   ???

// Function Style
function functionThis() {
  console.log(this);
}

// functionThis();

// Constructor Style
function Fish(name) {
  this.name = name;
  console.log(this)
};

// const f = new Fish('Frank');

// Method Style
Fish.prototype.thisChecker = function() {
  console.log(this);
}

// f.thisChecker();
































function Cat(name) {
  this.name = name;
}

Cat.prototype.meow = function () {
  debugger
  console.log(`${this.name} says 'meow'`);
};

function Dog(name) {
  this.name = name;
}

Dog.prototype.bark = function () {
  debugger
  console.log(`${this.name} says 'woof'.`);
};

Dog.prototype.sniff = function (otherThing) {
  debugger
  console.log(`${this.name} sniffs ${otherThing.name}`);
};


























function timesDo(num, cb) {
  for (let i = 0; i < num; i++) {
    cb();
  }
}















// Cat.prototype.sayHi = function () {
//   // debugger
//   // let that = this
//   return function (num) {
//     // debugger
//     timesDo(num, this.meow.bind(this))
//   }
// }
