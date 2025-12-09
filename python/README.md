Markdown to PDF API
============

Markdown to PDF converts markdown text into professionally formatted PDF documents with Base64-encoded output for easy downloading.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Markdown to PDF API](https://apiverve.com/marketplace/api/markdowntopdf)

---

## Installation
	pip install apiverve-markdowntopdf

---

## Configuration

Before using the markdowntopdf API client, you have to setup your account and obtain your API Key.  
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Usage

The Markdown to PDF API documentation is found here: [https://docs.apiverve.com/api/markdowntopdf](https://docs.apiverve.com/api/markdowntopdf).  
You can find parameters, example responses, and status codes documented here.

### Setup

```
# Import the client module
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient

# Initialize the client with your APIVerve API key
api = MarkdowntopdfAPIClient("[YOUR_API_KEY]")
```

---


### Perform Request
Using the API client, you can perform requests to the API.

###### Define Query

```
query = { "markdown": "# Sample Document\n\n## Introduction\n\nThis is a sample markdown document that will be converted to PDF.\n\n### Key Points\n\n- **First point**: This is important\n- **Second point**: This is also important\n- *Third point*: Don't forget this\n\n## Conclusion\n\nThank you for using our API!" }
```

###### Simple Request

```
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```
{
  "status": "ok",
  "error": null,
  "data": {
    "marginLeft": "0.4in",
    "marginRight": "0.4in",
    "marginTop": "0.4in",
    "marginBottom": "0.4in",
    "landscape": false,
    "pdfName": "334e0382-82e4-4d06-8639-a17919754942.pdf",
    "expires": 1763970853635,
    "downloadURL": "https://storage.googleapis.com/apiverve-helpers.appspot.com/htmltopdf/334e0382-82e4-4d06-8639-a17919754942.pdf?GoogleAccessId=1089020767582-compute%40developer.gserviceaccount.com&Expires=1763970853&Signature=dZroJ9RfbBINY7yD2cOpH1fDWxaFzux%2BUzXXNPlmvd%2F6rgdgbFsw1G0M6g9tC%2F%2FxHM6wr8W8gXm4LiPVlf9Octnqkhczy%2BuILZP7mbIc6HWSLH5pWS%2Fw7aMFKCzSLEGZVt%2B40dXq%2FbDp3ZIiawlnaF%2Fyguq0NdGOaVA5DB88BArrauKZp2knOawelzv7cFxvcOriJna1al1oYRDTdE5KGWW9%2FOGyLk1uBJKfGzY1zHFkIpPk5a54xx3uMWySBTUy%2FeBet0vhwXGrqnLov3fCF8GC9De37A%2BkEH619ZFOMBRngyRwhaWeXsELmg0YBBHVy1sI6VVnwGOMZ%2BwWJ0omFA%3D%3D",
    "markdownLength": 278,
    "htmlLength": 380
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.