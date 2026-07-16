# [Markdown to PDF API](https://apiverve.com/marketplace/markdowntopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Markdown to PDF converts markdown text into professionally formatted PDF documents with Base64-encoded output for easy downloading.

The Markdown to PDF API provides a simple, reliable way to integrate markdown to pdf functionality into your applications. Built for developers who need production-ready markdown to pdf capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/markdowntopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/markdowntopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/markdowntopdf)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.MarkdowntoPDF)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-markdowntopdf/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_markdowntopdf)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/markdowntopdf)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_markdowntopdf)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callMarkdowntoPDFAPI() {
    try {
        const requestBody = {
    "markdown": "# Sample Document\n\n## Introduction\n\nThis is a sample markdown document that will be converted to PDF.\n\n### Key Points\n\n- **First point**: This is important\n- **Second point**: This is also important\n- *Third point*: Don't forget this\n\n## Conclusion\n\nThank you for using our API!"
};

        const response = await fetch('https://api.apiverve.com/v1/markdowntopdf', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callMarkdowntoPDFAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/markdowntopdf" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -H "Content-Type: application/json" \
  -d '{
    "markdown": "# Sample Document\n\n## Introduction\n\nThis is a sample markdown document that will be converted to PDF.\n\n### Key Points\n\n- **First point**: This is important\n- **Second point**: This is also important\n- *Third point*: Don'\''t forget this\n\n## Conclusion\n\nThank you for using our API!"
}'
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/markdowntopdf
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/markdowntopdf) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.MarkdowntoPDF
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.MarkdowntoPDF) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-markdowntopdf
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-markdowntopdf/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_markdowntopdf
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_markdowntopdf) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/markdowntopdf
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/markdowntopdf) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_markdowntopdf
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_markdowntopdf) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:markdowntopdf-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/markdowntopdf-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Markdown to PDF API](https://apiverve.com/marketplace/markdowntopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/markdowntopdf](https://docs.apiverve.com/ref/markdowntopdf)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Markdown to PDF API is commonly used for:

- **Web Applications** - Add markdown to pdf features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with markdown to pdf capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Markdown to PDF API:

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

---

## Support & Community

- 🏠 **API Home**: [Markdown to PDF API](https://apiverve.com/marketplace/markdowntopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
