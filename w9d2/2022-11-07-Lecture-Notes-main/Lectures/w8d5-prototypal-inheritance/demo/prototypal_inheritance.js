function Animal (name) {
  this.name = name;
};

Animal.prototype.eat = function () {
  console.log(this.name + ' is eating.');
};

function Cat(name) {
  this.name = name;
}

// function Dog(name) {
//   this.name = name
// }

// Make Cat inherit from Animal here.
// Cat.prototype = Animal.prototype; // linking, mutating the animal's prototype, points to the same place in memory
// Cat.prototype = new Animal(); // expensive, creates new Animal contructor every time

// es5, suggested way
function Surrogate() {}; // setting up a blank function
Surrogate.prototype = Animal.prototype; // surrogate prototype, blank slate
Cat.prototype = new Surrogate(); // Cat prototype's __proto__ points to Animal prototype
Cat.prototype.constructor = Cat; // signals that the newly created Cat instance is a cat and not an animal
// Dog.prototype = new Surrogate();
// Dog.prototype.constructor = Dog

// function inherits(ParentClass, ChildClass) {
//     function Surrogate() {};
//     Surrogate.prototype = ParentClass.prototype;
//     ChildClass.prototype = new Surrogate();
//     ChildClass.prototype.construtor = ChildClass;
// }


// ES6 




Cat.prototype.meow = function () {
  console.log('Meow!');
};

const garfield = new Cat('Garfield');
garfield.eat();
garfield.meow();

const noCat = new Animal('noCat');
noCat.meow();


