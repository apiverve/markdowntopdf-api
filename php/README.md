# Markdown to PDF API - PHP Package

Markdown to PDF converts markdown text into professionally formatted PDF documents with Base64-encoded output for easy downloading.

## Installation

Install via Composer:

```bash
composer require apiverve/markdowntopdf
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Markdowntopdf\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['markdown' => '# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don\'t forget this

## Conclusion

Thank you for using our API!']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Markdowntopdf\Client;
use APIVerve\Markdowntopdf\Exceptions\APIException;
use APIVerve\Markdowntopdf\Exceptions\ValidationException;

try {
    $response = $client->execute(['markdown' => '# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don\'t forget this

## Conclusion

Thank you for using our API!']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/markdowntopdf?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/markdowntopdf?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/markdowntopdf?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
