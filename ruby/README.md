# Markdown to PDF API - Ruby Gem

Markdown to PDF is a PDF generator API that converts markdown text into professionally formatted PDF documents and returns a temporary download URL for each file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_markdowntopdf'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_markdowntopdf
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_markdowntopdf'

# Initialize the client
client = APIVerve::Markdowntopdf::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ markdown: "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ markdown: "# Sample Document

## Introduction

This is a sample markdown document that will be converted to PDF.

### Key Points

- **First point**: This is important
- **Second point**: This is also important
- *Third point*: Don't forget this

## Conclusion

Thank you for using our API!" })
  puts response["data"]
rescue APIVerve::Markdowntopdf::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Markdowntopdf::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Markdowntopdf::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/markdowntopdf?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/markdowntopdf?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/markdowntopdf?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
