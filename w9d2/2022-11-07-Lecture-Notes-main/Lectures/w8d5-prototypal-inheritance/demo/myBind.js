// ES6 
// Function.prototype.myBind = function(context) {
//   return () => {
//     return this.apply(context)
//   }
// }

Function.prototype.myBind = function (context) {
  
  debugger
  const that = this;
  const bindArgs = Array.from(arguments).slice(1);
  console.log(bindArgs)
  // initial return returns the function to be bound, and to be called later
  return function () {
    const callArgs = Array.from(arguments);
    // second return returns when function is actually invoked
    return that.apply(context, bindArgs.concat(callArgs));
  }
}

// No arrow function
// Function.prototype.myBind = function(context, ...bindArgs) { // Malkhaz
//   let ctx = this;
//   return function(...callArgs) {
//     return ctx.apply(context, callArgs); // when the bound function is invoked, we will pass Emmett as callArgs
//   };
// }

class Instructor {
  constructor(name) {
    this.name = name;
  }

  eat() {
    console.log(`${this.name} eats banana!`);
    return 100;
  }

  teach(person1, person2) {
    // debugger
    console.log(`${this.name} helped answer ${person1}'s and ${person2}'s question`)
  };
}

const clarence = new Instructor("Clarence");
const unboundEat = clarence.eat; // Instructor.prototype.eat
// console.log(unboundEat);
const boundEat = unboundEat.myBind(clarence); // context
// console.log(boundEat());
// console.log(setTimeout(boundEat, 1000));

const unboundTeach = Instructor.prototype.teach;
const boundTeach = unboundTeach.myBind(clarence, "Malkhaz");
boundTeach("Emmett");
// console.log(boundTeach());