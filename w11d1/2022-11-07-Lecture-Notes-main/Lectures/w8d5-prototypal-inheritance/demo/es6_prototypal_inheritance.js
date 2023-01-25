class Animal {
  constructor(name) {
    this.name = name;
  }

  eat() {
    console.log(this.name + ' is eating.');
  }

  // methods
}

class Cat extends Animal {
  constructor(name, coatColor) {
    super(name); // equivalent of Animal.call(this) in ES5
    this.coatColor = coatColor;
  }

  meow() {
    console.log('Meow!');
  }
}

