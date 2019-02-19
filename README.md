[![Build Status](https://travis-ci.org/becc-mu/Raindrops.svg?branch=master)](https://travis-ci.org/becc-mu/Raindrops) [![Coverage Status](https://coveralls.io/repos/github/becc-mu/bank_tech_test/badge.svg?branch=master)](https://coveralls.io/github/becc-mu/bank_tech_test?branch=master)

# Raindrops

Raindrops takes a number input for raindrops and converts it to a string of: (Pling, Plang, and Plong) or a combination of the 3 strings depending on the number of factors in the input.

# My approach

It is written in Ruby and all the tests have passed with Rspec and RuboCop is used for linting.
After completion of the implementation and the test coverage to 100%, I focused on code quality code complexity by reducing conditional statements into smaller functions. Calculate module allows to any number of factors to be added through `check_factor(number, factor_num = '')` method.


# Specification

## Requirements
* if the number has a factor of 3, output 'Pling'
* if the number has a factor of 5, output 'Plang'
* if the number has a factor of 7, output 'Plong'
* if the number does not have any of the above as a factor simply return the numbers digits

## Acceptance criteria

* 28's factors are 1, 2, 4, 7, 14 and 28: this would be a simple 'Plong'
* 30's factors are 1, 2, 3, 5, 6, 10, 15, 30: this would be a 'PlingPlang'
* 34 has four factors: 1, 2, 17, and 34: this would be '34'

## User story

```
As a User
So that I can convert Raindrops number to a word
I want to be able to input a (number) to the Raindrops converter

As a User
So that I can see the Raindrops converted name
I want to see the numbers converted to a string
```


# Getting started

## Setting up

1. Clone repo to your local machine git clone https://github.com/becc-mu/Raindrops
2.  Initialise Ruby with Bundler, `bundle init` (if you don't have bundle)

3. Run `gem install bundle` to install dependencies

4. When installing completed `run bundle`

## Running tests
To run test command `rspec`

## How to use
* You should be able to use any of your preferred REPL program `irb` or `pry`

* Require files and input any positive number

```
require './lib/raindrops'
raindrops = Raindrops.new
raindrops.convert(3)
raindrops.convert(5)
raindrops.convert(7)
raindrops.convert(34)

```
error notice if input is less than 0 or non-numeric:

```
raindrops.convert('abc') => You must enter a number!
raindrops.convert(-1) => Number must be positive

```
# Screenshot

![](https://github.com/becc-mu/Raindrops/blob/master/public/Screen%20Shot%20.png)
