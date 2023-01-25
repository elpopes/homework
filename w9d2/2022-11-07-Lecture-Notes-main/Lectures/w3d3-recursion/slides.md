# Recursion
# W3D3

```
#                eosRnuirc
#               eosR  nuirc
#              eo  sR nu  irc
#             e o s R n u i rc             
#             e o s R n u i r c
#             e o s R u n i cr
#              eo  Rs un  cri
#               Reso  curin
#                Recursion
```

Note: This shows the merge sort algorithm

---

## Learning Objectives

- Have a process for approaching recursive problems
- Understand what the inductive step is and how to build it
- Know the advantages of memoization 

---

## Lecture Outline

1. Recursion for Today
2. How to think about recursion
3. Coffee Shop example
4. Demos
5. Recursion reasoning tips
6. Kahoot!

---

## What you're _not_ going to do today...

>>>> * Use loops*
>>>> * Modify a method argument
>>>> * Use an optional, private argument
>>>> * Think in linear or procedural terms
>>>> * Be mentally refreshed at the end of the day (sorry)

>>*Recursion & iteration can be used together, so you will use loops but not to recurse.

---

## What you _are_ going to do today...

* Write methods that call themselves
* Break problems down incrementally
* "Trust" that your method already works for all previous cases
* Learn a new way of thinking and programming! &nbsp; :D

---

## What is a recursive function?

* Calls itself ("recurses")
* Solves a problem by breaking it down into smaller subproblems
* Has a _**base case**_ – simplest "already solved" condition
* Builds back up incrementally using an _**inductive step**_

---

## Inductive Step
How we use the return value of the previous step to determine the current result.

---

# Coffee Shop Example
How do you know how much coffee you need for everyone in line?

---

![coffee_0](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_0.png?token=GHSAT0AAAAAABNT6OQH3M5NN42W4U6A374GY36F6BQ)

---

![coffee_1](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_1.png?token=GHSAT0AAAAAABNT6OQG6FT352VKXPPZ4HGMY36F6TQ)

---

![coffee_2](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_2.png?token=GHSAT0AAAAAABNT6OQHFMJCOWDVTRHC577UY36F63Q)

---

![coffee_3](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_3.png?token=GHSAT0AAAAAABNT6OQHVQKDG37FXURYCC6AY36F7BQ)

---

![coffee_4](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_4.png?token=GHSAT0AAAAAABNT6OQGLRUHTI2L3B75ZQE4Y36F7IQ)

---

![coffee_5](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_5.png?token=GHSAT0AAAAAABNT6OQH2J3VX6YZX67HBID6Y36F7PA)

---

![coffee_6](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_6.png?token=GHSAT0AAAAAABNT6OQH7PIIEK7JOSGJ4TEKY36F7UQ)

---

![coffee_7](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_7.png?token=GHSAT0AAAAAABNT6OQGNVX676SNDZDDTYDGY36F73Q)

---

![coffee_8](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_8.png?token=GHSAT0AAAAAABNT6OQGSPSM2CXTES2SM25UY36GAAQ)

---

![coffee_9](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_9.png?token=GHSAT0AAAAAABNT6OQGFBA5BMGBQ6KTRWX6Y36GAHA)

---

![coffee_10](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_10.png?token=GHSAT0AAAAAABNT6OQHOVCANOIES6EJMFEKY36GAMQ)

---

![coffee_11](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_11.png?token=GHSAT0AAAAAABNT6OQGJRDOTCCFB5B3FWROY36GAVQ)

---

![coffee_12](https://raw.githubusercontent.com/appacademy/2022-11-07-Lecture-Notes/main/Lectures/w3d3-recursion/assets/coffee_12.png?token=GHSAT0AAAAAABNT6OQHVGSMGEMV7Z225RGKY36GA4A)

---

## Problem Solving Process
1. Understand the problem
1. Identify Base case
1. Write one step up from base case
1. Logic for inductive step
1. Code it out!

---

## Code Demos!

---

## The power of Memoization!
![fibs_memoized](https://aa-ch-lecture-assets.s3.us-west-1.amazonaws.com/ruby/recursion/fibs_memoized.png)

---

## Final Demo Problem
![pascals_triangle](https://aa-ch-lecture-assets.s3.us-west-1.amazonaws.com/ruby/recursion/pascals_triangle.png)

---

# Final Thoughts
## The Recursion Process
 1. Simplify the problem
 2. Identify the base case
 3. Write the inductive step

---

## Some tips to keep in mind
- Assume what your last recursive call should return  
and build out your inductive step from there
- Use small examples to visualize things
	- one or 2 steps up from the base case
- Look at how you can reduce the input on each call
	- Arrays and Strings: shorten them
  - Integers: decrease or increase to a base case
- Return the same data type (base case and final)

---

# [Kahoot!](https://create.kahoot.it/details/w3d3-recursion/b12bbcd0-0ac8-4725-a228-7746f1890852)

---

## Remember
>>> * You can use Recursion and Iteration _together_
>>> * Each recursive call will return before anything else happens - just like any method call
>>> * Always assume you're getting back the same data type!

---

# Questions?
![pooh](https://media.giphy.com/media/U7EOycerCyghO/giphy.gif)

---

## Thanks!
Experiment. Try things. Do it _wrong_. The point isn't to be perfect. It's to _learn_.