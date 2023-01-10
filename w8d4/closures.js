function sum(nums) {
  let count = 0;

  function addNum(num) {
    count += num;
  }

  for (let i = 0; i < nums.length; i++) {
    addNum(nums[i]);
  }

  return count;
}

sum([1, 3, 5, 7, 9]);

function isPalindrome(string) {
  function reverse() {
    return string.split("").reverse().join("");
  }

  return string === reverse();
}

function createCounter() {
  let count = 0;

  // ++count increments the value of the count variable by 1 before it is evaluated in the statement.
  // count++ returns the value of the count variable before it is incremented by 1. If we used count++ instead, our counter would be off by 1
  return () => ++count;
}

let counter = createCounter();
console.log(counter()); // => 1
console.log(counter()); // => 2

counter.count; // undefined
let counter2 = createCounter();
console.log(counter2()); // => 1

function celebrityName(firstName) {
  var nameIntro = "This celebrity is ";
  function lastName(theLastName) {
    return nameIntro + firstName + " " + thelastName;
  }
  return lastName;
}
