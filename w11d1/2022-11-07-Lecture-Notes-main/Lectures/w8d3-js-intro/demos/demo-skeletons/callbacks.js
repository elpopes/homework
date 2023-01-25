
// We want to declare a named function that logs the argument


const arr = [1, 2, 3];

function logElement(el) {
  console.log(el + '!')
}

arr.forEach(logElement);

// arr.each do |ele|
//   ele + '!'
// end


// arr.forEach(function(el) {
//   console.log(el + "!");
// })

// arr.forEach((el) => {
//   console.log(el + "!")
// })



/* Writing our own function that has a callback (function) parameter */
function doMathWithNumber(number, callback) {
  return callback(number);
}

// Then we invoke it with an anonymous function

// console.log(doMathWithNumber(5, function(num) {
//   return num * num;
// }))

console.log(doMathWithNumber(5, (num) => {
  return num * num;
}))