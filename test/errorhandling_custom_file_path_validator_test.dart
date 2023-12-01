import 'package:errorhandling_custom_file_path_validator/errorhandling_custom_file_path_validator.dart';
import 'package:test/test.dart';

void main() {
  group('File Path Validation Tests', () {
    test('Valid file path', () {
      expect(
          () => validateFilePath('/home/user/document.txt'), returnsNormally);
    });

    test(
        'Invalid file path not starting with /home/user/ throws InvalidFilePathException',
        () {
      expect(() => validateFilePath('/invalid/directory/document.txt'),
          throwsA(isA<InvalidFilePathException>()));
    });

    test('Invalid file extension throws InvalidFilePathException', () {
      expect(() => validateFilePath('/home/user/document.pdf'),
          throwsA(isA<InvalidFilePathException>()));
    });

    test('Empty file path throws InvalidFilePathException', () {
      expect(
          () => validateFilePath(''), throwsA(isA<InvalidFilePathException>()));
    });
  });
}
