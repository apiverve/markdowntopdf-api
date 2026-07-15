declare module '@apiverve/markdowntopdf' {
  export interface markdowntopdfOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface markdowntopdfResponse {
    status: string;
    error: string | null;
    data: MarkdowntoPDFData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MarkdowntoPDFData {
      marginLeft:     null | string;
      marginRight:    null | string;
      marginTop:      null | string;
      marginBottom:   null | string;
      landscape:      boolean | null;
      pdfName:        null | string;
      expires:        number | null;
      downloadURL:    null | string;
      markdownLength: number | null;
      htmlLength:     number | null;
  }

  export default class markdowntopdfWrapper {
    constructor(options: markdowntopdfOptions);

    execute(callback: (error: any, data: markdowntopdfResponse | null) => void): Promise<markdowntopdfResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: markdowntopdfResponse | null) => void): Promise<markdowntopdfResponse>;
    execute(query?: Record<string, any>): Promise<markdowntopdfResponse>;
  }
}
