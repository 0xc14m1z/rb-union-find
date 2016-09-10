# rb-union-find

[![Build Status](https://travis-ci.org/ciamiz/rb-union-find.svg?branch=master)](https://travis-ci.org/ciamiz/rb-union-find)

Implementation of algorithms to solve the dynamic connectivity problem in Ruby:

* quick find
* quick union
* weighted quick union
* path compressed weighted quick union

## interface

Each implementation has the following methods:

1. `add`: adds an object to the components list;
2. `count`: returns the number of elements, **not** components;
3. `connect`: connects two objects;
4. `connected?`: tests if two objects are connected, directly or not;

## specs

There are only two specs for all the implementations.

1. one tests the appliance to the interface. An implementation must override several methods;

2. the other tests the behaviour that an implementation of a union-find algorithm should have. All the algorithms must pass same specs.


## implementations

Implementations progressively inherits from the previous one to keep classes short and clear.
