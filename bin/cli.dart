import 'dart:io';
// import 'package:cli/cli.dart' as cli;
import 'package:image/image.dart' as img;

void main() {
  final image = img.decodeJpg(File('images/DSCF8958.jpg').readAsBytesSync())!;

  File('images/DSCF8958-bleachBypass.jpg')
      .writeAsBytesSync(img.encodeJpg(img.bleachBypass(image)));
  File('images/DSCF8958-monochrome.jpg')
      .writeAsBytesSync(img.encodeJpg(img.monochrome(image)));
  File('images/DSCF8958-grayscale.jpg')
      .writeAsBytesSync(img.encodeJpg(img.grayscale(image)));
  File('images/DSCF8958-sepia.jpg')
      .writeAsBytesSync(img.encodeJpg(img.sepia(image)));
}

// void main(List<String> arguments) {
// }
