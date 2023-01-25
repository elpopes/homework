
// We want to declare a named function that logs the argument

function logElement(el) {
  console.log(el + '!');
}

const arr = [1, 2, 3];

arr.forEach(logElement);

// logElement is a callback for the forEach function
// callback means the parameter for a function is of type: function
// logElement is a function
// forEach will call the logElement for us

// how do we call forEach???


// We can also provide an anonymous function as a callback, in place
// This is VERY common in JS

// arr.forEach(function(el) {
//   console.log(el + '!');
// })




// ES6 Arrow Function

// arr.forEach(el => console.log(el))










/* Writing our own function that has a callback (function) parameter */
function doMathWithNumber(number, callback) {
  return callback(number);
}

// Then we invoke it with an anonymous function

console.log( 
doMathWithNumber(5, function (num) { 
  return num * num 
}) 
);

// Or

// console.log(
// doMathWithNumber(5, (num) => {
//   return num * num
// })
// );