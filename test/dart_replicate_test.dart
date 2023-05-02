import 'package:dart_replicate/dart_replicate.dart';
import 'package:test/test.dart';

void main() {
  test('run', () {
    final model = 'owner/model:version';
    final inputs = {
    'prompt': 'a red cat, 4k photo',
  };
    expect(Replicate.run(model, inputs),inputs);
  });
}
