declare module '@apiverve/markdowntopdf' {
  export interface markdowntopdfOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface markdowntopdfResponse {
    status: string;
    error: string | null;
    data: MarkdowntoPDFData;
    code?: number;
  }


  interface MarkdowntoPDFData {
      marginLeft:     string;
      marginRight:    string;
      marginTop:      string;
      marginBottom:   string;
      landscape:      boolean;
      pdfName:        string;
      expires:        number;
      downloadURL:    string;
      markdownLength: number;
      htmlLength:     number;
  }

  export default class markdowntopdfWrapper {
    constructor(options: markdowntopdfOptions);

    execute(callback: (error: any, data: markdowntopdfResponse | null) => void): Promise<markdowntopdfResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: markdowntopdfResponse | null) => void): Promise<markdowntopdfResponse>;
    execute(query?: Record<string, any>): Promise<markdowntopdfResponse>;
  }
}
