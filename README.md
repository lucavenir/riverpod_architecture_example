# Riverpod & Clean Architecture: an example
This repo contains an **opinionated** example on how to use [Riverpod] with a [Clean Architecture]-like approach.

This is *not* a _by-the-book_ implementation of Clean Architecture. There's a good pinch of pragmatism in it, while keeping the main principles in mind.

## Motivation
For some weird reason, I've seen lots of threads and discussions online (e.g. Discord, SO, Twitter, Reddit), in which Riverpod is mentioned as being somewhat "hard", "messy" and / or only suitable for very simple projects (or for experts only, at scale).
Gosh, I've even seen people writing article on how riverpod is a huge software engineering mistake / anti-pattern.

**Nothing is further from the truth**.

Riverpod is simple to reason with, simple to start with, and scales incredibly well, with nearly zero overhead. Plus, it offers incredibly simple and flexible caching features.
At the same time, riverpod adapts to your architecture needs; you can use it as you want: riverpod will *never* get in your way, architecture-wise.
Indeed, you can easily take this example and adapt it to be a "by-the-book" implementation of Clean Architecture (this is left as an exercise to the reader).

## Clean Architecture considerations
I am *not* a "clean-architecture-nazi", and instead I always look at cleanliness with a pinch of pragmatism. This example is meant to show just that.
For example, creating interfaces is *not* mandatory to let your project have "good code".
Remember: *there is no free lunch*, aka abstractions / indirections have their costs.

Nonetheless, this example still follow the main clean architecture guidelines. For example, one thing that Clean Architecture teaches us is that it's a *good idea* to *clearly* separate code into layers; mainly because it (usually!) lets you write better code (better cohesion, better separation of concerns, etc.).

### Dependency Injection
Clean Architecture promotes this pattern.

Riverpod can be used to perform easy and intuitive **Dependency Injection** to organize your code: if you're using Riverpod, chances are you won't use GetIt or any other service locators.

In other words, every service is always _provided_ with its ad-hoc `Provider`. At the same time, injecting is trivial: just use `ref.watch`.

### Repository Interfaces
I've just advocated not to introduce useless layers of indirection when possible, but I still use them in this example when creating repositories.  
**Why**? It's not just "separating business logic from data access logic". All-in-all, I've found it to be a cheap abstraction that often pays off. To understand this decision, we need to take into consideration how I usually write code. Let me elaborate.

I often find myself writing applications *after* I've received the **buisiness requirements** from the client.  
In this case, I usually have a pretty good idea of what the application should do, but I have zero knowledge on how the data-access layer should look like. This information is usually delivered later on.  
All-in-all, I know *what* data I need to fetch; and since I'm able to define my application models (aka entities), I know what I should expect from an hypotetical data-fetching layer.
What I *don't* know is *how* I will fetch it.  
Another thing to take into consideration is that I want to test business logic code ASAP.

So, a good idea might be to introduce an `abstract interface` to completely decouple these implementation details from the business logic layer, so that I can write the data layer logic later on.  
This still doesn't *completely* justify the use of interfaces, but it's a good start.  
**Indeed**, one could simply write concrete repositories, with its methods throw `UnimplementedError` and call it a day; you can implement them later on, and you can easily mock them for testing purposes.  
This is a perfectly valid approach.

In my experience things change when you work in a team, most importantly if you're leading it.  
In this scenario, you want to define you architecture first (!) and then ask you team to implement some parts of it when *we* are ready to do so.  
Someone can address business logic tests. Someone else can implement the presentation layer. And so on.  
Later on, when data-layer information is ready, you can assign its implementation and integration tests to someone else. To delegate this, this person's knowledge of the system *is limited to the interface you've defined* (besides the details of the data sources, obviously).

Notice how this person won't modify any previously written code.  
Whereas, if you just offer a concrete implementation of the repository with `throw`s in it, you're forcing your teams to modify code.  
This is not always desirable.  
In my experience I can say that when working in a team, you want to keep the codebase as "stable" as possible, mostly because PRs will be easier to understand / read.

My general "tip" is the following:

_When reading code becomes boring, when implementing an interface becomes obvious and when writing code becomes trivial, then... it's usually a good sign that you're doing it right._

### Wait, where are the use-cases?
Okay, now I've just advocated how introducing a layer of indirection can be a good idea, especially when working in a team, but then, I've completely skipped the use-case layer.

This is because, with riverpod, business logic is meant to stay inside your providers / controllers / side effects.  
Riverpod providers and controllers are so easy to test that introducing a use-case layer is often not needed and it might feel more like a burden than a benefit.  
Again, this is just personal experience and preference.

If some logic needs to be reusable, I often find myself writing `mixin`s for my controllers, and `extension`s (or namespaces) for providers.

**Again**, it's not like I **never** use a service / use case layer.  
I do, but only when I need to perform some complex business logic that might be shared across multiple providers and that do not relate to caching / UI logic or that does not fit in a `mixin` / namespace.

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
