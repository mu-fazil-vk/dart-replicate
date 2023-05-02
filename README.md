
# Dart-Replicate
It is a Dart client for [Replicate](https://replicate.com/).

<img src="https://raw.githubusercontent.com/mu-fazil-vk/Assets/main/Dart-Replicate/cat.png">


## Introduction ✨

Replicate is an online service that enables users to run machine learning models on the cloud. This software package provides a simple client for their anonymous API, which makes it possible to run advanced models such as Stable Diffusion and Whisper with just a few lines of code 😄🤏.


## Features 🚀

1. Anonymous API
2. Unlimited run

## Installation ⬇️

```
dart pub add dart-replicate
```


## Usage

```
import 'package:dart-replicate/replicate' as app;

void main(List<String> arguments) async {
  // Define a model name and input data
  final model = 'owner/model:version';
  final inputs = {
    'prompt': 'a red cat, 4k photo',
  };

  final output = await app.Replicate.run(model, inputs);


  print(output);
}
```


## Contributing
Have a feature you had like to see added? Create a [pull request](https://github.com/mu-fazil-vk/Dart-Replicate/pulls) or open an [issue](https://github.com/mu-fazil-vk/Dart-Replicate/issues).

## Happy to connect! 😊
We hope you enjoy my projects. If you have any questions or feedback, please don't hesitate to [reach out to me](https://instagram.com/fazil.v.k).