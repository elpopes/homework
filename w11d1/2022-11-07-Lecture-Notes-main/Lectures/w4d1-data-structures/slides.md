# W4D1

---

## Learning Goals

+ Understand the basics of data structures and in what situations certain data structures might be preferred
+ Know what a `stack`, `queue`, and `tree` are, and basic API to implement them
+ Know how to implement `BFS` and `DFS` for your tree and understand the differences between them

---

## Lecture Agenda

* ADTs VS. Data Structures
* Stacks
* Queues
* Trees
* Algorithms and Methods (DFS / BFS)

---

## Before we begin

Ruby 1 Assessment

![Fear](https://camo.githubusercontent.com/a31327808b40416b2a87bdbe909bf703984274a3/68747470733a2f2f6d656469612e67697068792e636f6d2f6d656469612f316870526b564d315851674f512f67697068792e676966)


---

![rambo](https://media0.giphy.com/media/11ISwbgCxEzMyY/giphy.gif)

---

## Abstract Data Types vs. Data Structures

* `Abstract Data Type`: Defines a set of properties and interactions with some information (i.e. the blueprint)

* `Data Structure`: Actual implementation of the concept, with all of the properties (i.e. the building itself)

---

## Passenger Car "ADT"

* Allow passengers to enter and exit vehicle
* Accelerate
* Decelerate
* Direct

---

## Passenger Car "Data Structure"

---

![Camry](https://mycarboard.com/wp-content/uploads/2017/12/AwesomeAmazingGreat-1999-Toyota-Camry-LE-87K-MILES-4-CYLINDERS-1-OWNER-NO-RESERVE-GETS-GREAT-GAS-MILEAGE-CLEAN-RUNS-DRIVES-GREAT-2017-20182017-201820172018.jpg)

---

![Tesla](https://www.cstatic-images.com/car-pictures/xl/usc70tsc024b021001.png)

---

## Tradeoffs!

---


## What data structure could we use to implement these ADTs?

* List
* Dictionary

---

## Example: Stacks

---

## Stack (ADT) -- Sequential, LIFO

Overview: Sequential collection of objects. All operations take place at one end (LIFO).

---


### Stack (Example API) 

**Properties**:

* `push(el)`:  Add element to top of stack
* `pop`: Remove and return element from top of stack
* `peek`:  Return top element of the stack, without removing it
* `size`: Return the current size of the stack
* `empty?`: Return true or false depending on whether or not stack is empty

---

## Code Review of Stack

---

## Queue (ADT) -- Sequential, FIFO

Overview: Sequential collection of objects. Removal at one end, insertion at the other (FIFO).

---

### Queue (Example API) 

**Properties:**

* `enqueue(el)`:  Add element to back of queue
* `dequeue`: Remove and return element from front of queue
* `show`:  Show the entire queue (but don't return it! Why wouldn't we want to return it?)
* `size`: Return the current size of the queue
* `empty?`: Return true or false depending on whether or not queue is empty

---

## Code Review of Queue

---

## 10 minute break

---

## Lecture Agenda

* ~~ADT’s VS. Data Structures~~
* ~~Stacks~~
* ~~Queues~~
* Trees
* Algorithms and Methods (DFS / BFS)

---

## Trees

---

## What makes up a Tree ADT

* Composed of nodes that store information
* Each node has (optionally) one parent and (optionally) many children
* Depth

---

## "Do we need a `Tree` class?"

---

## Node

+ The basic unit comprising a tree
+ Typically holds a value and references to its children
+ The root node _is_ the tree (and every other node is a sub-tree).
+ **internal nodes** vs. **leaf nodes**

---

### Is the root node a leaf node or an internal node?

---

- Which nodes are leaves?
- Which nodes are internal?

![binary-tree](https://media.geeksforgeeks.org/wp-content/cdn-uploads/binary-tree-to-DLL.png)

---

## Code Demo - A simple `Node` implementation

---

## Algorithms & Methods

---

`Algorithm`: General approach and process to problem solving operations (ex. Binary Search)

`Function/Method`: Concrete implementation, in a specific language, of an algorithm (Binary Search in Ruby)

---

## Tree Traversal Algorithms (Search)

* Breadth-first Search (BFS)
* Depth-first Search (DFS)

---

## Conceptual walk-through of BFS and DFS

---

## [Kahoot!](https://create.kahoot.it/create#/edit/e33ec04c-b289-4d09-8cc7-6a55758aadcd/done)

---

# Thank You 👋
