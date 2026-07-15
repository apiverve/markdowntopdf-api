"""
Markdown to PDF API - Basic Usage Example

This example demonstrates the basic usage of the Markdown to PDF API.
API Documentation: https://docs.apiverve.com/ref/markdowntopdf
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/markdowntopdf'

def call_markdowntopdf_api():
    """
    Make a POST request to the Markdown to PDF API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;markdown&#x27;: &#x27;# Sample Document\n\n## Introduction\n\nThis is a sample markdown document that will be converted to PDF.\n\n### Key Points\n\n- **First point**: This is important\n- **Second point**: This is also important\n- *Third point*: Don&#x27;t forget this\n\n## Conclusion\n\nThank you for using our API!&#x27;
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling Markdown to PDF API...\n')

    result = call_markdowntopdf_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
