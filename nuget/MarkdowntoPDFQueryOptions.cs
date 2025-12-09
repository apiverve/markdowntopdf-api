using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MarkdowntoPDF
{
    /// <summary>
    /// Query options for the Markdown to PDF API
    /// </summary>
    public class MarkdowntoPDFQueryOptions
    {
        /// <summary>
        /// Markdown text to convert (max 100,000 characters)
        /// Example: # Title\n\nThis is **bold** text.
        /// </summary>
        [JsonProperty("markdown")]
        public string Markdown { get; set; }
    }
}
