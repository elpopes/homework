Function.prototype.myBind = function (context, ...bindArgs) {
  const funk = this;
  return function (...callArgs) {
    return funk.apply(context, bindArgs.concat(callArgs));
  };
};

const sayHello = function (arg1, arg2) {
  return `${this} says hello to ${arg1} and ${arg2}`;
};
const boundSayHello = sayHello.myBind("Taylor", "Raz");

console.log(boundSayHello("Cathy"));

Function.prototype.myCurry = function (numArgs) {
  let numbers = [];
  let funk = this;
  return function _myCurry(el) {
    numbers.push(el);

    if (numbers.length < numArgs) {
      return _myCurry;
    } else {
      return funk(...numbers);
    }
  };
};
