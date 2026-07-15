/**
 * Markdown to PDF API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Markdown to PDF API.
 * API Documentation: https://docs.apiverve.com/ref/markdowntopdf
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/markdowntopdf';

/**
 * Make a POST request to the Markdown to PDF API
 */
async function callMarkdowntoPDFAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;markdown&quot;: &quot;# Sample Document\n\n## Introduction\n\nThis is a sample markdown document that will be converted to PDF.\n\n### Key Points\n\n- **First point**: This is important\n- **Second point**: This is also important\n- *Third point*: Don&#x27;t forget this\n\n## Conclusion\n\nThank you for using our API!&quot;
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callMarkdowntoPDFAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
