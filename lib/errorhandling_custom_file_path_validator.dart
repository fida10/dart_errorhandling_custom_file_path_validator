/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_custom_file_path_validator_base.dart';

/*
Practice Question 4: Custom File Path Validator

Task:

Create a function named validateFilePath that takes a file path string 
and validates it against a set of rules (e.g., must start with a specific 
directory name, must have a certain file extension, etc.). 
Create a custom exception InvalidFilePathException for any violations.

Example Rules:

The file path must start with /home/user/.
The file must have a .txt extension.
*/

bool validateFilePath(String filePath) {
  return RegExp(r'^/home/user.+\.txt$').hasMatch(filePath)
      ? true
      : throw InvalidFilePathException(
          "Invalid file path provided! File path: $filePath");
}

class InvalidFilePathException implements Exception {
  InvalidFilePathException(this.message);
  String message;
}