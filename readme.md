# Bottles/FubuMVC Example 

This is a dead-simple example project I put together while I was learning how to use the [Bottles](http://bottles.fubu-project.org/) library in a [FubuMVC](http://mvc.fubu-project.org/) application. 

The application includes a simple 'Hello, World' bottle and a simple FubuMVC web application that dynamically loads the bottle. 

It also includes a demonstration of replacing existing functionality in an application with functionality from a dynamically loaded Bottle. In this case, the main application has an 'encryption' page which does ROT-13 on text input. The app demonstrates loading a Bottle which replaces the default encryption page with one which does AES encryption. 

I put this together as a learning exercise for myself, and I figured it might be able to help others who are pretty sure that the Bottles library is what they need but who can't find a good example to get started with it.

Getting started should be as simple as cloning and building it. Please let me know via the issues section if any part of it is confusing, wrong, or doesn't seem to work for you. I want this to be as clear an example as it can be. 

As I get deeper into using these frameworks for my own projects, hopefully I'll be able to add more complex examples to demonstrate others features.