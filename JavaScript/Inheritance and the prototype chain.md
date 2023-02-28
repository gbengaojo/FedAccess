---
tags: [JavaScript]
title: Inheritance and the prototype chain
created: '2023-02-28T07:56:26.701Z'
modified: '2023-02-28T08:05:02.854Z'
---

# Inheritance and the prototype chain
[referance link](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)

* JavaScript has one inheritance construct -- the object
* Each object contains a *private* member that holds a link to another inheritance construct object
* Eventually the final (or first, depending on perspective) object in the chain has its own private member prototype 

