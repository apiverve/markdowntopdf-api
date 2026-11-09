# Markdown to PDF API - Dart/Flutter Client

Markdown to PDF is a PDF generator API that converts markdown text into professionally formatted PDF documents and returns a temporary download URL for each file. Paid plans can set the paper size, orientation and margins, style the document with their own CSS, and print a header and footer with page numbers on every page.

[![pub package](https://img.shields.io/pub/v/apiverve_markdowntopdf.svg)](https://pub.dev/packages/apiverve_markdowntopdf)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Markdown to PDF API](https://apiverve.com/marketplace/markdowntopdf?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_markdowntopdf: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_markdowntopdf/apiverve_markdowntopdf.dart';

void main() async {
  final client = MarkdowntopdfClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'markdown': '# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don\'t forget this

## Conclusion

Thank you for using our API!'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "marginLeft": "0.4in",
    "marginRight": "0.4in",
    "marginTop": "0.4in",
    "marginBottom": "0.4in",
    "landscape": false,
    "pdfName": "b3ce14f5-1c44-4d2d-8a10-77430b679dae.pdf",
    "expires": 1766096769188,
    "downloadURL": "https://storage.googleapis.com/apiverve-helpers.appspot.com/htmltopdf/b3ce14f5-1c44-4d2d-8a10-77430b679dae.pdf?GoogleAccessId=1089020767582-compute%40developer.gserviceaccount.com&Expires=1766096769&Signature=q%2Fe4YUCniLQIRCPSO82LhTJ%2BSfqZSPNq8nSblE0LW6%2B546R9kXIowaQD7k%2BOhFzQi9q3nb8QcUNtZijHpEkIIcy6OOayWInWMzMF8ooXQ7Gch4YJL6iAURSIFZpfEw3XqyYuWXP1dw372kmiYVfTBgaRed0apeRwjeF8bGciLm%2FOsYKcsRrYlJtuyFwqeNw4G2aQKgLkxUw%2FP6L5Av%2BZssRkRqIWvQ6eNmwpUJZ48hJZYY6%2BRFhTYwnN4dEPWYSd9TSiJf6C%2BEWReWQJlgBy7BUK0H%2B9pyn4872PV1N3eI9VHhg89g4dimbieOQUF%2BhG%2Bkhcd5z0inaMml7DBdbF4g%3D%3D",
    "markdownLength": 278,
    "htmlLength": 380
  }
}
```

## API Reference

- **API Home:** [Markdown to PDF API](https://apiverve.com/marketplace/markdowntopdf?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/markdowntopdf](https://docs.apiverve.com/ref/markdowntopdf?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
