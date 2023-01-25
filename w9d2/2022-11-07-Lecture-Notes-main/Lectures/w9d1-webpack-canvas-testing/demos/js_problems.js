Function.prototype.inherits = function (Parent) {
  function Surrogate() {}
  Surrogate.prototype = Parent.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;
};

Function.prototype.myBind = function (context, ...bindArgs) {
  // debugger
  const that = this;
  return function (...callArgs) {
    // debugger
    return that.apply(context, bindArgs.concat(callArgs));
  };

};

const sayHello = function (arg1, arg2) {
  // debugger
  return `${this} says hello to ${arg1} and ${arg2}`;
};
// debugger
const boundSayHello = sayHello.myBind("Taylor", "Raz")
// debugger
console.log(boundSayHello("Cathy"))

// myCurry
Function.prototype.myCurry = function (numArgs) {
  // debugger
  let nums = [];
  let fcn = this;
  return function _myCurry(el) {
    // debugger
    nums.push(el);

    if (nums.length < numArgs) {
      // debugger
      return _myCurry;
    } else {
      // debugger
      return fcn(...nums);
      // return fcn.apply(null, nums);
      // return fcn.call(null, ...nums);
    }
  };
};

const sum = function () {
  // debugger
  let sum = 0;

  for (let i = 0; i < arguments.length; i++) {
    const num = arguments[i];
    sum += num;
  }

  return sum;
};

// debugger
const curriedSum = sum.myCurry(3)
// debugger
curriedSum(1)
// debugger
curriedSum(4)
// debugger
curriedSum(5);


// myApply
Function.prototype.myApply = function (context, args = []) {
  return this.bind(context)(...args);
};

// myCall
Function.prototype.myCall = function (context, ...args) {
  return this.bind(context)(...args);
};
