# W6D2

## Metaprogramming

![so-meta](https://media.giphy.com/media/gY5sEujrJbCve/giphy.gif)

---

## Learning Objectives

- Define metaprogramming
- Identify `self` in:
  + class definitions
  + class methods
  + instance methods
- Describe the difference between class variables and class instance variables
- Know how to use `send` and `define_method` (and `method_missing` if time allows)

---

## Agenda

* What is metaprogramming?
* Metaprogramming demos

![doge](https://aa-ch-lecture-assets.s3.us-west-1.amazonaws.com/meta-programming/meta-doge.jpg)

---

## What is Metaprogramming?

* What is _programming_?

---

### What is Metaprogramming?

* The essence of programming is defining behaviour
* Metaprogramming is defining behaviour that will define future behaviour

---

### What is Metaprogramming?

* Often used to dynamically define a suite of similar methods based on undetermined future input to reduce duplicate code

Examples:

* `attr_reader`/`attr_writer`
* `belongs_to`/`has_many`
* `validates` 

---

### What is Metaprogramming?

* In practice, metaprogramming in Ruby makes use of a collection of methods to help the developer define behavior
* Today we'll explore just a small sample of those methods
* You may have unanswered questions or want to explore more on your own later

---

Let's walk through some demos!
