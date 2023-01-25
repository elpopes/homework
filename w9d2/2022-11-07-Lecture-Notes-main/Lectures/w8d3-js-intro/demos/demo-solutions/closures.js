/* Closures */

// "A closure is a function AND the connection to variables at its birth place"


const feed = function() {
  // foodItems is known as a free variable
  // closures "close over" (capture, hang onto) free variables
  const foodItems = ['Grits'];

  return function(newItem) {
    // Since the foodItems array is closed over, we can access it inside this function
    foodItems.push(newItem);
    return `I have eaten ${foodItems.join(' and ')}`;
  }
}

// How do we use this feed function???

// Let's test in chrome dev tools console
const closure = feed();

// What will this return?
closure;
// It returns a function!
// Take a look at just the feed function definition, as soon as we invoke it, we are returning another function!

closure('Apples');
// I have eaten Grits and Apples
// When we invoked this function of feed(), that is returning a function.
// This function being returned is where we invoked on top of that with an argument of newItem which is 'Apples'.
// Then, because that function is closed over by the outer function, we have access to its variables 
// I like to think of closing over as wrapping around.
// So the feed function's local variables will be accessible in the inside function because we wrapped around it
// This also creates that private state because we won't be able to access that array unless we added another item

closure('Peach');
// I have eaten Grits and Apples and Peach
// Again we are using closure so that the inner function that is returned will access the array
// This array will still retain Apples!
// That's because this is not a new invokation of feed, we have invoked it once and then invoked on top of that with Apples and Peach
// This gets into the idea of currying but that is something you will get into more detail with later this week

// We can actually see that if we defined another variable and called feed(), it would have a different list
const closure2 = feed();
closure2('Grapes');
closure2('Olives');
// This is because the original feed() chain was closing over the new items we added on that specific function
// Where as this is a new chain on a new invokation of the feed function so we can add new items

// And just to maybe illustrate this in another way, we can write this out like this:
feed()('Pineapple')








// Another example - each function call will add 1 to the counter
// const counter = () => {
//   let currentCount = 0; // need to increment (reassign) this later, use 'let'

//   return () => {
//     currentCount += 1;
//     return "currently at " + currentCount;
//   };
// };

// const myCounter = counter();
// myCounter;
// myCounter();
// myCounter();
// myCounter();
// myCounter();







// Same example with addCount being a parameter - so we can add a desired amount to our counter
// const counter = () => {
//   let currentCount = 0; // need to increment (reassign) this later, use 'let'
//   return (addCount) => {
//     currentCount += addCount;
//     return "currently at " + currentCount;
//   };
// };

// const myCounter = counter();
// myCounter;
// myCounter(1);
// myCounter(2);
// myCounter(3);
// myCounter(4);







// We don't always have to return functions, we can return an object which has key value pairs where values are functions
// const counter = () => {
//   let count = 0;

//   return {
//       count: () => count,
//       inc: () => count += 1,
//       dec: () => count -= 1,
//       reset: () => count = 0
//   }
// }

// const myCounter = counter();

// myCounter.inc();
// myCounter.count();
// myCounter.inc();
// myCounter.count();
// myCounter.dec();
// myCounter.count();
// myCounter.reset();