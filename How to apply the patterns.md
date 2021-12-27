(https://microservices.io/articles/applying.html)

# Applying the microservice architecture pattern language

The microservice architecture pattern language consists of numerous groups of patterns. The value of a pattern language exceeds the sum of it’s individual patterns because it defines these relationships between the patterns:

-   Predecessor – a predecessor pattern is a pattern that motivates the need for this pattern. For example, the Microservice Architecture pattern is the predecessor to the rest of the patterns in the pattern language except the monolithic architecture pattern.
-   Successor – a pattern that solves an issue that is introduced by this pattern. For example, if you apply the Microservice Architecture pattern you must then apply numerous successor patterns including service discovery patterns and the Circuit Breaker pattern.
-   Alternative – a pattern that provides an alternative solution to this pattern. For example, the Monolithic Architecture pattern and the Microservice Architecture pattern are alternative ways of architecting an application. You pick one or the other. These relationships provide valuable guidance when using a pattern language. Applying a pattern creates issues that you must then address by applying successor patterns. The selection of patterns continuously recursively until you reach patterns with no successor. If two or more patterns are alternatives then you must typically pick just one. In many ways, this is similar to traversing a graph.

Let’s look at how you can apply the microservice architecture pattern language to architect your application. In this post we will look at 3 critical decisions you must make. In later posts, we will look at other important, albeit not quite as critical patterns.

## Decision #1: Monolithic architecture or microservice architecture?

The first decision you must make is whether to use a [Monolithic architecture pattern](https://microservices.io/patterns/monolithic.html) or the [Microservice architecture pattern](https://microservices.io/patterns/microservices.html). If you pick the Microservice architecture pattern you must choose numerous other patterns to deal with the consequences of your decision.

![](https://microservices.io/i/PatternsRelatedToMicroservices.jpg)

As you can see, there are lots of other patterns that you must apply. Lets look at a couple of choices you must make.

## Decision #2: How to decompose an application into services?

If you have decided to use the microservice architecture you must define your services. There are two main options,



This patterns yield equivalent results: a set of services organized around business concepts rather than technical concepts.

## Decision #3: how to maintain data consistency and perform queries?

A key feature of the microservice is the [Database per Service pattern](https://microservices.io/patterns/data/database-per-service.html). It’s alternative, the [Shared Database pattern](https://microservices.io/patterns/data/shared-database.html) is essentially an anti-pattern and best avoided. The Database per service pattern dramatically changes how you maintain data consistency and perform queries. You will need to use the [Saga pattern](https://microservices.io/patterns/data/saga.html). You will often need to implement queries using the [Command Query Responsibility Segregation (CQRS)](https://microservices.io/patterns/data/cqrs.html) pattern.