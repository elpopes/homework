// "use strict";

// function soundMaker(sound, times) {

//     // closure captures sound var
//     function makeSound() {
  
//         console.log(`${sound}`);
//     }

//     for(let i = 0; i < times; i++) {
//         makeSound();
//     }
// }

// soundMaker("woof", 5);

// function summation(arr) {
//     let sum = 1;

//     // this is a closer because it's capturing the array
//     function summer() {
//         for(let i = 0; i < arr.length; i++) {
//             sum *= arr[i];
//         }
//     }

//     summer();

//     return sum;
// }

// console.log(summation([1,2,3,4]));


// let callback = function() {
//     console.log("It has been 5 seconds");
// }
// let timeToWait = 5000; 

// global.setTimeout(callback, timeToWait);


// global.setTimeout(function() {
//     console.log("it has been 5 seconds!");
// }, 5000);

//ES6 be like...
globalThis.setTimeout(() => {
    console.log("It's been uno seconds!!")
}, 1000);
