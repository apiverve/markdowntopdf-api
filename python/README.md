Markdown to PDF API
============

Markdown to PDF is a PDF generator API that converts markdown text into professionally formatted PDF documents and returns a temporary download URL for each file.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-markdowntopdf.svg)](https://pypi.org/project/apiverve-markdowntopdf/)

This is a Python wrapper for the [Markdown to PDF API](https://apiverve.com/marketplace/markdowntopdf?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-markdowntopdf
```

Using `pip3`:

```bash
pip3 install apiverve-markdowntopdf
```

---

## Configuration

Before using the Markdown to PDF API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient

# Initialize the client with your APIVerve API key
api = MarkdowntopdfAPIClient("[YOUR_API_KEY]")

query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Markdown to PDF API documentation is found here: [https://docs.apiverve.com/ref/markdowntopdf](https://docs.apiverve.com/ref/markdowntopdf?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient

# Initialize the client with your APIVerve API key
api = MarkdowntopdfAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `MarkdowntopdfAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient, MarkdowntopdfAPIClientError

api = MarkdowntopdfAPIClient("[YOUR_API_KEY]")

query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except MarkdowntopdfAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient, MarkdowntopdfAPIClientError

api = MarkdowntopdfAPIClient("[YOUR_API_KEY]")

query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except MarkdowntopdfAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient, MarkdowntopdfAPIClientError

query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }

# Using context manager ensures proper cleanup
with MarkdowntopdfAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except MarkdowntopdfAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient

# Enable debug mode
api = MarkdowntopdfAPIClient("[YOUR_API_KEY]", debug=True)

query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_markdowntopdf.apiClient import MarkdowntopdfAPIClient

api = MarkdowntopdfAPIClient("[YOUR_API_KEY]")

query = { "markdown": "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
