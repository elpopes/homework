// context is the window

Array.prototype.hello = function (context) {
  // return () => {
  //     return this.apply(context)
  // }

  this.forEach(function (el) {
    console.log(this);
  });

  // don't practice with fat arrows
};

// Function.prototype.myBind = function(context) {
//     function(context) {
//         return ()
//     }
// }

Function.prototype.myBind = function (context, ...bindArgs) {
  let that = this;
  return function (...callArgs) {
    return that.apply(context, bindArgs.concat(callArgs)); // when the bound function is invoked we pass "emmett" as callArgs
  };
};

class Instructor {
  constructor(name) {
    this.name = name;
  }

  eat() {
    console.log("this is" + this);
  }

  teach(person1, person2) {
    console.log(this + person1 + person2);
  }
}

const clarence = new Instructor("Clarence");
const unboundEat = this.clarence.eat;
const boundEat = unboundEat.myBind(clarence); // context is clarence
console.log(boundEat);
console.log(setTimeout(boundEat, 1000));

const unboundTeach = Instructor.prototype.teach;
boundEat(Teach);
const boundTeach = unboundTeach.myBind(clarence, "Mlks"); //clarence is the context and mlks is the bindtime arg and emmett calls to callaregs??

console.log(boundTeach);

//////////////////////

// const addThreeNumbers = (a) => (b) => (c) => a + b + c;

// console.log(addThreeNumbers(1)(2)(3)); // 6

// const addTwoNumbers = addThreeNumbers(1);
// console.log(addTwoNumbers(2)(3)); // 6

// const addOneNumber = addTwoNumbers(2);
// console.log(addOneNumber(3)); // 6

function addThreeNumbers(a) {
  return function (b) {
    return function (c) {
      return a + b + c;
    };
  };
}

console.log(addThreeNumbers(1)(2)(3)); // 6

const addTwoNumbers = addThreeNumbers(1);
console.log(addTwoNumbers(2)(3)); // 6

const addOneNumber = addTwoNumbers(2);
console.log(addOneNumber(3)); // 6

function curriedSum(numArgs) {
  const nums = [];

  return function _curriedSum(num) {
    nums.push(num);

    if (nums.length === numArgs) {
      let total = 0;
      //   nums.forEach((num) => (total += num)); /// rewrite without fat arrow
      nums.forEach(function (num) {
        total += num;
      });
      return total;
    } else {
      return _curriedSum;
    }
  };
}

function _curriedSum(num) {
  nums.push(num);

  if (nums.length === numArgs) {
    let total = 0;
    nums.forEach(function (num) {
      total += num;
    });
    return total;
  } else {
    return _curriedSum;
  }
}

/////////////////////

function Cat(name, personality) {
  this.name = name;
  this.personality = personality;
}

let garfield = new Cat("Garfield", "hungry");

Cat.prototype = Animal.prototype;

Cat.prototype.meow = function () {
  console.log("Meow!");
};

Cat.protoyype = new Animal(); // expensive

function Surrogate() {} // setting up a blank function
Surrogate.prototype = Animal.prototype; // setting up Sur prototype to == animals proto
Cat.prototype = new Surrogate(); // Cat proto __proto__ points to animal proto
// Cat prototypes's __proto__ points to Animal prototype Cat.p
Cat.prototype.constructor = Cat; // signals that the newly created cat instance is a cat and not animal.

/// this is es6
class Cat extends Animal {
  constructor(name, coatColor) {
    super(name);
    this.coatColor = coatColor;
  }

  meow() {
    console.log("Meow!");
  }
}

//////////////////

function sum() {
  let total = 0;
  for (let i = 0; i < arguments.length; i++) {
    total += arguments[i];
  }
  return total;
}

function sum(...numbers) {
  let total = 0;
  for (let i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  return total;
}

Function.prototype.myBind = function (context) {
  let bindArgs = Array.from(arguments).slice(1); // get arguments passed to myBind
  let that = this;
  return function () {
    let callArgs = Array.from(arguments); // get arguments passed when the bound function is called
    that.apply(context, bindArgs.concat(callArgs));
  };
};

Function.prototype.myBind = function (context, ...bindArgs) {
  return (...callArgs) => this.apply(context, bindArgs.concat(callArgs));
};

function curriedSum(numArgs) {
  let numbers = [];
  function _curriedSum(num) {
    numbers.push(num);
    if (numbers.length === numArgs) {
      let total = 0;
      for (let i = 0; i < numArgs; i++) {
        total += numbers[i];
      }
      return total;
    } else {
      return _curriedSum;
    }
  }
  return _curriedSum;
}

function curriedSum(numArgs, ...numbers) {
  if (numbers.length === numArgs) {
    let total = 0;
    for (let i = 0; i < numArgs; i++) {
      total += numbers[i];
    }
    return total;
  } else {
    return (...moreNumbers) => curriedSum(numArgs, ...numbers, ...moreNumbers);
  }
}

Function.prototype.inherits = function (SuperClass) {
  function Surrogate() {}
  Surrogate.prototype = SuperClass.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;
};

//////////////////////////

// This is the first implementation of the `sum` function. It takes an arbitrary number of arguments,
// and returns the sum of all of them.
function sum() {
  // Initialize a total variable to zero
  let total = 0;
  // Loop through all the arguments passed to the function
  for (let i = 0; i < arguments.length; i++) {
    // Add the current argument to the total
    total += arguments[i];
  }
  // Return the total
  return total;
}

// This is the second implementation of the `sum` function. It uses the rest operator (`...`) to gather
// all of the arguments passed to the function into an array called `numbers`.
function sum(...numbers) {
  // Initialize a total variable to zero
  let total = 0;
  // Loop through all the numbers in the `numbers` array
  for (let i = 0; i < numbers.length; i++) {
    // Add the current number to the total
    total += numbers[i];
  }
  // Return the total
  return total;
}

// This is the first implementation of the `myBind` method. It is added to the `Function.prototype`
// so that it is available on all functions. It takes in a `context` argument, which will be the value
// of `this` inside the function when it is called. It also takes in any additional arguments, which
// will be passed to the function when it is called.
Function.prototype.myBind = function (context) {
  // Use the `Array.from` method to convert the `arguments` object into an array called `bindArgs`,
  // and slice off the first argument (the `context`)
  let bindArgs = Array.from(arguments).slice(1);
  // Save a reference to the current function in a variable called `that`
  let that = this;
  // Return a new function
  return function () {
    // Use the `Array.from` method to convert the `arguments` object into an array called `callArgs`
    let callArgs = Array.from(arguments);
    // Call the current function, with the `context` as the value of `this`, and the concatenation of
    // `bindArgs` and `callArgs` as the arguments
    that.apply(context, bindArgs.concat(callArgs));
  };
};

// This is the second implementation of the `myBind` method. It is the same as the first implementation,
// but it uses the rest operator (`...`) to gather the additional arguments into an array called
// `bindArgs`.
Function.prototype.myBind = function (context, ...bindArgs) {
  // Return a new function that takes a rest parameter (`...callArgs`) to gather any additional arguments
  // passed to it into an array.
  return (...callArgs) => {
    // Call the current function, with the `context` as the value of `this`, and the concatenation of
    // `bindArgs` and `callArgs` as the arguments
    this.apply(context, bindArgs.concat(callArgs));
  };
};

// This is the first implementation of the `curriedSum` function. It takes in a `numArgs` argument, which
// specifies how
