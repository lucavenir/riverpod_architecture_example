# Riverpod & Clean Architecture: an example
This repo contains a simple example on how to use [Riverpod] when [Clean Architecture] is a requirement.

## Motivation
For some weird reason, We've seen a trend involving lots of threads and discussions on several platforms (Discord, SO, Twitter, Reddit), in which Riverpod is mentioned as being somewhat "hard", "messy" and / or only suitable for very simple projects (or for experts only, at scale).
We've also seen a lot of architecture discussions, often mentioning buzzwords such as mvc, mvvm, mvp, mvw (etc.) in which Riverpod is placed as "used for its controllers only", as opposed to BLoC's strong "Clean Architecture"-like capability.

Nothing is further from the truth. When used properly, Riverpod is simple to reason with, simple to start with, and scales incredibly well, with nearly zero overhead. Plus, it offers incredibly simple and flexible caching features.

## Using Riverpod
Riverpod is a **complete replacement implementation for the Dependency Injection pattern**, while _also_ being a **reactive caching and data-binding framework**.
That's it, that's Riverpod.

If you're using Riverpod, chances are you won't use GetIt or any other service provier / injectors.
Thus, every service is always _provided_ with its ad-hoc `Provider`. At the same time, injecting is trivial: just use `ref.watch`.

## Project's Architecture
We are not "clean-architecture-nazis", and instead we always look at cleanliness with a pinch of pragmatism. In this example we _never_ created interfaces, nor it felt "mandatory" to create repositories for _every single external integration_.
Nonetheless, we still follow the main guidelines: there are the infamous three layers and each class / file / method / variable aims to have one, single, and easy to understand responsibility.

Our objective was to outline Riverpod's capability in a non-trivial context, while still keeping the requirements as simple as possible

## How to use.
This project uses this free (registration needed) Weather API. It is required to attach an API key at the requests.
I haven't set up (yet) a `.env` importer for this project.
Thus, just go to [dio.dart] and substitute `<your-api-key>` with your actual key (PLEASE, REMEMBER, **DO NOT** COMMIT THAT FILE).

## Roadmap / TODOs
1. Add a [.env importer] or use another secret-hiding shanenigan
2. Add i18n with [slang]
3. Add more routes or get more creative when we've got some time (suggestions welcome)

## Contributing
We strongly encourage to reach us out via Github's issues. PRs are welcome, just open an issue first so that we know what problem you want to address.

### Contributors
  - Luca Venir
  - Arturo Romanelli
  - Elia Tolin


[Riverpod]: https://github.com/rrousselGit/river_pod
[Clean Architecture]: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
[dio.dart]: https://github.com/lucavenir/riverpod_architecture_example/blob/37bea9d73d829635111532520f9dd2775e8e730f/lib/client/dio.dart#L26
[slang]: https://pub.dev/packages/slang
[.env importer]: https://pub.dev/packages/flutter_dotenv
