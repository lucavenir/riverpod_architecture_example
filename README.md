# Riverpod & Clean Architecture: an example
This repo contains an **opinionated** example on how to use [Riverpod] with a [Clean Architecture]-like approach.

The main purpose of this repository is to show the *correct* interpretation of the Clean Architecture principles; indeed, the main goal of the above book is to *minimize* development times, while still keeping the codebase "scalable", if this makes sense.
**Nowhere in the book Uncle Bob states that you should write a lot of boilerplate code, or that you should introduce interfaces, or several (namely useless) layers of indirection.**

The main takeaway of the book is to clearly separate whatever belongs to external libraries (e.g. UI, data sources, etc.) from your business logic, **so that you can easily test it**, aka maintain it.
SOLID principles, data / domain / presentation layers, etc. just come to happen on their own once you seek for testability.
Indeed, Riverpod has been created mainly with testability in mind.
Writing **unit tests** for this repository is an exercise left to the reader (check out - yourself! - how easy it is to maintain this codebase); indeed, PRs are welcome!

This repository is the result of several years of experiments onto real-world applications.
We - as a team - have shot ourselves in the foot so many times before crafting this final result.
We hope this example will help you to avoid the same mistakes.


## Motivation
For some weird reason, I've seen lots of threads and discussions online (e.g. Discord, Stack Overflow, Twitter, Reddit), in which Riverpod is mentioned as being somewhat "hard", "messy", or simply only suitable for simple projects.
We've even seen people writing article on how riverpod is a huge software engineering mistake / anti-pattern.

**Nothing is further from the truth**.

Riverpod is simple to reason with, simple to start with, and scales incredibly well, with nearly zero overhead. Plus, it offers incredibly simple and flexible caching features.
At the same time, riverpod adapts to your architecture needs; you can use it as you want: riverpod will *never* get in your way, architecture-wise.
Indeed, you can easily take this example and adapt it to be a "by-the-book" implementation of Clean Architecture (this is left as an exercise to the reader, although I don't personally recommend it). You can check out older commits to see such implementation if you need some inspiration.

## Clean Architecture considerations
We look at "cleanliness" with a good pinch of pragmatism. I don't personally like who criticizes uncle bob's books. This example is meant to show just that.
For example, creating interfaces is *not* mandatory to let your project have "good code". Uncle bob underlines this in the late editions of his books.
Remember the *no free lunch theorem*, aka: **abstractions and indirections have their costs**.

This example follows the main clean architecture guidelines.
For example, one thing that Clean Architecture teaches us is that it's a *good idea* to *clearly* separate code into layers; mainly because it (usually!) lets you write better code (better cohesion, better separation of concerns, etc.).
**But** this doesn't mean that you should be obsessed with weird file system structures, or that you should hide external data sources behind interfaces.

### Dependency Injection considerations
Clean Architecture promotes this pattern.

Riverpod can be used to perform easy and intuitive **Dependency Injection** to organize your code: if you're using Riverpod, chances are you won't use GetIt or any other service locators.

In other words, every service is always _provided_ with its ad-hoc `Provider`. At the same time, injecting is trivial: just use `ref.watch`.

This eases testing, as you can easily mock your services by providing a different implementation of the same `Provider`.

One key consideration about D.I. with Riverpod is that we ought to keep any stateless logic... *actually stateless*. Injecting state (via `ref.watch`) in a stateless provider (e.g. a Repository, or a Client) is most certainly an anti-pattern. Be aware of that.

### Data layer considerations
As you can probably tell by experience, external data sources might heavily differ from your client implementations.

This is the key to understand this example: external data sources might be organized in a way that is not suitable for your client code. Maybe their APIs are not that good, or maybe they are just following another feature structure.

This is exactly why you want to clearly separate these out. The sole responsibility of these class is to provide a simple model that represents the data you need.

### Mapper considerations
At some point, we need to convert external data sources into our models. This is where mappers come into play.

Our mappers are *adapters*; Dart eases the writing of these adapters, via `extension` methods.
These do belong to *our* models, but they are not part of the model itself.
That's why extensions are a good fit for this task.

### Repositories considerations
Repositories in this example simply return the models its feature *needs*.

In other words, its main role is to offer a simple and ***stateless API*** to interact with external data sources so that providers and controllers don't have to deal with the complexity of such process.


## How to use.
This project uses this free (registration needed) Weather API.  
It is required to attach an API key at the requests.
Please read `.env.template` to try out this application.

## Contributing
We strongly encourage to reach us out via Github's issues.  
PRs are welcome, just open an issue first so that we know what problem you want to address.

### Contributors
  - Arturo Romanelli
  - Luca Venir
  - Elia Tolin

### Special Thanks
Special thanks to @ArturoRomanelli for its major contributions.
Arturo basically crafted the starter example so big kudos to him.


[Riverpod]: https://github.com/rrousselGit/river_pod
[Clean Architecture]: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
[dio.dart]: https://github.com/lucavenir/riverpod_architecture_example/blob/37bea9d73d829635111532520f9dd2775e8e730f/lib/client/dio.dart#L26
[slang]: https://pub.dev/packages/slang
[.env importer]: https://pub.dev/packages/flutter_dotenv
