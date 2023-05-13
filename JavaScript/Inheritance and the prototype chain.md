---
tags: [JavaScript]
title: Inheritance and the prototype chain
created: '2023-02-28T07:56:26.701Z'
modified: '2023-02-28T08:05:02.854Z'
---

# Inheritance and the prototype chain
[referance link](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)

* JavaScript has one inheritance construct -- the object
* Each object contains a *private* member to a a **prototype** object
* Eventually the final (or first, depending on perspective) object in the chain has its own private member prototype with type *null*. "By definition, null has no prototype [or type period], and acts st the final link in the **prototype chain**.
* "While this confusion is often considered to be one of JavaScript's weaknesses, the prototypical inheritance model itself is, in fact, more powerful than the classic model *[I find this debatable]*. It is, for example, fairly trivial to build a classic model on top of a prototypical model — which is how classes are implemented.

Although classes are now widely adopted and have become a new paradigm in JavaScript, classes do not bring a new inheritance pattern. While *classes abstract most of the prototypical mechanism away* [emphasis added], understanding how prototypes work under the hood is still useful."
