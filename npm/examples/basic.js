/**
 * Basic Example - Markdown to PDF API
 *
 * This example demonstrates how to use the Markdown to PDF API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const markdowntopdfAPI = require('../index.js');

// Initialize the API client
const api = new markdowntopdfAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
var query = {
  "markdown": "# Sample Document\n\n## Introduction\n\nThis is a sample markdown document that will be converted to PDF.\n\n### Key Points\n\n- **First point**: This is important\n- **Second point**: This is also important\n- *Third point*: Don't forget this\n\n## Conclusion\n\nThank you for using our API!"
};

// Make the API request using callback
console.log('Making request to Markdown to PDF API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
