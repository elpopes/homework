// currying transforms a function that takes multiple arguments into a sequence of functions that each take in only one argument

function boringAddThreeNumbers(num1, num2, num3) {
  return num1 + num2 + num3;
}

function curriedAddThree(num0) {
  return function (num1) { // 1
    return function (num2) { // 2
      return function (num3) { // 3
        return num0 + num1 + num2 + num3; // 6
      }
    }
  }
};

const a = curriedAddThree(7)(1)(2)(3);
console.log(a);
// const b = a(1);
// console.log("------ b ------")
// console.log(b);
// const c = b(2);
// console.log("------ c ------")
// console.log(c);
// const result = c(3);
// console.log(result);

function curriedSum(numArgs) {
  const nums = [];

  return function _curriedSum(num) {
    nums.push(num)
    if (nums.length === numArgs) {
      let res = 0;
      nums.forEach(num => res += num)
      return res;
    } else {
      console.log(nums)
      return _curriedSum
    }
  }
}

const curriedAdd = curriedSum(3);
console.log(curriedAdd(1)(2)(17));

// const curriedAdd2 = curriedSum(2);
// console.log(curriedAdd2(1));
// console.log(curriedAdd2(2));