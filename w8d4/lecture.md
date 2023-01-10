# Callbacks

- must be passed in uninvoked rather than the result of the function
- a function passed to another function as an argument and intended to invoked later
- setTimeout and setINterval that are built into webapi (webapi runs on js)
- eventHandlers are another example of callbacks
- higher order functions accept callbacks and return the results and the functions

# ES6 Stntax

- more like ruby and other object-oriented languages
- just syntactic sugar
- still a constructor function with a prototype on which we add methods
- INHERITANCE???

```
    function SomeClass() {
        // ...contstructo functionality
    }

    SomeClass.prototype.someFunction = function () {
        // instance method functionality
    }
```

vs ES6

````
class SomeClass {
    constructor() {
        // constructor functionality
    }
    someFunction() {
        // instance method functionality
    }
}
```

# Context

    - what this refers to
    - context is the object that we invoked funct on.
    this is invoking function style
    ```
    func()
    ```
    context is set to the global style
    this is invoking method style:

````

object.func()

```

    context will be the object

```

constructor style:
new func()
this will be the instance.

Two more ways to invoke function
they can both be called on other functions. And can pass in other arguments in as well.

- Call
  - func.call(context, arg1, arg2)
- Apply

  - func.apply(context, [arg1, arg2])
  - same as call but takes in additional arguments as an array

  ## Invoking Chart:

  | Style          | How to Invoke         | `this` Inside Function                                        |
  | -------------- | --------------------- | ------------------------------------------------------------- |
  | Function       | `func()`              | `window` (in non-strict mode)<br>`undefined` (in strict mode) |
  | Method         | `obj.method()`        | `obj`                                                         |
  | Constructor    | `new func()`          | `new` object                                                  |
  | Callback       | `func.call(thisArg)`  | `thisArg`                                                     |
  | Apply          | `func.apply(thisArg)` | `thisArg`                                                     |
  | Arrow Function | `() => {}`            | lexical `this`                                                |

## CALLBACKS ARE ALWAYS INVOKED FUNCTION-STYLE

- context is loss

## Bind

- excepts context as first argument
- returns new function
- copies original functionality of original function and bind it to the passed in context permanently
- Bind does not invoke the function, just returns the new function bound.

# Asynchronicity

- unlike Ruby in js some tasks occur asynchronsouly
  - Readline Library
  - uses setTimeout
