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
        /// </summary>
        [JsonProperty("markdown")]
        public string Markdown { get; set; }

        /// <summary>
        /// Paper size
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }

        /// <summary>
        /// Set to true for landscape orientation
        /// </summary>
        [JsonProperty("landscape")]
        public bool? Landscape { get; set; }

        /// <summary>
        /// The top margin in inches
        /// </summary>
        [JsonProperty("marginTop")]
        public double? MarginTop { get; set; }

        /// <summary>
        /// The right margin in inches
        /// </summary>
        [JsonProperty("marginRight")]
        public double? MarginRight { get; set; }

        /// <summary>
        /// The bottom margin in inches
        /// </summary>
        [JsonProperty("marginBottom")]
        public double? MarginBottom { get; set; }

        /// <summary>
        /// The left margin in inches
        /// </summary>
        [JsonProperty("marginLeft")]
        public double? MarginLeft { get; set; }

        /// <summary>
        /// Stylesheet applied to the rendered markdown, e.g. body { font-family: Georgia, serif } table { border-collapse: collapse }
        /// </summary>
        [JsonProperty("css")]
        public string Css { get; set; }

        /// <summary>
        /// HTML printed at the top of every page. Spans with class pageNumber, totalPages, date or title are filled in. Use inline styles with a font-size (Chromium defaults to a tiny font) and leave room with marginTop
        /// </summary>
        [JsonProperty("headerTemplate")]
        public string HeaderTemplate { get; set; }

        /// <summary>
        /// HTML printed at the bottom of every page, with the same placeholders as headerTemplate, e.g. <span class="pageNumber"></span> of <span class="totalPages"></span>
        /// </summary>
        [JsonProperty("footerTemplate")]
        public string FooterTemplate { get; set; }
    }
}
