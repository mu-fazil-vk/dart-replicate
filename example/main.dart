import 'package:dart_replicate/dart_replicate.dart' as app;

void main(List<String> arguments) async {
  // Define a model name and input data
  final model = 'owner/model:version';
  final inputs = {
    'prompt': 'a red cat, 4k photo',
  };

  final output = await app.Replicate.run(model, inputs);


  print(output);
}