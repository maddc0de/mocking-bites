# MOCKING-BITES

----

## Objective

A series of exercises to help me learn how to test Classes in isolation - Testing classes in a multi-class system to make sure it does what it needs to do, without having to rely on the other classes working/behaviour:

[x] Unit Testing Parent-Child Classes

Parent-child relationship classes is where there is a single class that looks after a list of other classes.

[x] Crafting Doubles

[x] Unit Testing Peer Classes

[] Unit Testing API Requests

learn to test API requests using RSpec doubles
<!-- an API is a way of allowing programs to request data from other programs -->

[x] Unit Testing Terminal IO

Testing inputs and outputs in terminal

----

## how to run it

run it inside the mocking-bites directory with the following commands in the command line:

- to test all spec files:

```shell
$ rspec

```

- to test a specific spec file: (for example, to test greet.rb)

```shell
$ rspec spec/greet_spec.rb

```

## tools and techniques

- diagramming tools: excalidraw.com asciiflow.com

- **mocking** - technique for creating fake classes fo testing purposes
control input and what methods to call on the class, assert on the output, contact fake objs

- **dependency injection** - creating doubles and injecting it in the initializer in a class

- shorthand syntax:
for calling a fake class object: `double :class_object`
for calling a fake class object with a method: `double :class_object, method_name: output`
for precise testing of arguments given: `allow(*class_object*).to receive(*:method_name).with(*argument*).and_return(*output*)`   # => `allow` won't check that method has been called
                                        `expect(*class_object*).to receive(*:method_name).with(*argument*).and_return(*output*)`  # => `expect` will check that method's been called at the end of test

- **curl**  - stands for Client for URL and is used to perform URL manipulations

- creating **doubles** for `gets` and `puts`:

methods like `gets` and `puts` actually exists on a special object in Ruby called **Kernel** and it is usally implicit.

```ruby
class Greeter
  def greet
    Kernel.puts "What is your name?"
    name = Kernel.gets.chomp
    Kernel.puts "Hello, #{name}!"
  end
end
```

We can then create doubles for it by replacing Kernel with a fake object