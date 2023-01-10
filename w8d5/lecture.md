## Context

| Invocation                          | this                                                | Example                                                                                                  |
| ----------------------------------- | --------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| function invocation                 | `undefined` in strict mode, global object otherwise | `function foo() { console.log(this); }`<br>`foo(); // undefined in strict mode, global object otherwise` |
| method invocation                   | object the method is called on                      | `const obj = { foo: function() { console.log(this); } };`<br>`obj.foo(); // obj`                         |
| constructor invocation (with "new") | new object created for the invocation               | `function Foo() { console.log(this); }`<br>`const foo = new Foo(); // Foo {}`                            |
| indirect invocation (call, apply)   | first argument passed to `call`/`apply`             | `function foo() { console.log(this); }`<br>`foo.call(obj); // obj`<br>`foo.apply(obj); // obj`           |
|                                     |

- Since callbacks are called functional style when you call a function inside another function you use the context (it becomes global)

## MyBind

Review to line four in lecture.js

## Currying

translates the evaluation of a function that takes multiple args into evals a sequence of cu

## Inheritance

-prototypeal inheritance can be targeted - understand constructor functions and new - prototypes with **proto** and property lookup - each class in js have a constructor funct and a proto property

garfield.**proto** === Cat.

                               +------------+
                               | Constructor |
                               +------------+
                                     |
                                     |
                                     v
                    +------------+    +------------+
                    | Prototype  |<---| __proto__  |
                    +------------+    +------------+
                                     |
                                     |
                                     v
                               +------------+
                               | Object     |
                               +------------+

Here is an explanation of the prototype chain:

When you define a constructor function in JavaScript, the function is associated with a prototype object.

You can add methods and properties to the prototype object, and these methods and properties will be available to all objects created using the constructor function.

When you create an object using the new operator, the object's **proto** property is set to the prototype of the constructor function that was used to create the object.

The **proto** property is an internal property of an object that refers to the object's prototype. You can think of it as a "hidden" property that is used to implement inheritance in JavaScript.

The prototype chain is the chain of prototypes that is used to resolve property lookups for an object. When you access a property of an object, JavaScript will first look for the property on the object itself. If it is not found, it will look for the property on the object's prototype. If it is not found there, it will look for the property on the prototype's prototype, and so on, until it reaches the end of the prototype chain.
