/* Closures */

// "A closure is a function AND the connection to variables at its birth place"


const feed = function() {
  // foodItems is known as a free variable
  // closures "close over" (capture, hang onto) free variables
  const foodItems = ['Grits']; // Grits, Apples

  return function(newItem) { // Apples
    foodItems.push(newItem);
    return `I have eaten ${foodItems.join(' and ')}`;
  }
}





// const counter = () => {
//   let currentCount = 0; // need to increment (reassign) this later, use 'let'

//   return () => {
//     currentCount += 1;
//     return "currently at " + currentCount;
//   };
  
// };





// const counter = () => {
//   let currentCount = 0; // need to increment (reassign) this later, use 'let'
//   return (addCount) => {
//     currentCount += addCount;
//     return "currently at " + currentCount;
//   };
// };







const counter = () => {
  let count = 0;

  return {
      count: function(){return count},
      inc: function(){return count += 1},
      dec: function(){return count -= 1},
      reset: function(){return count = 0}
  }
}

// myCounter.inc
// =>
// () => count += 1,