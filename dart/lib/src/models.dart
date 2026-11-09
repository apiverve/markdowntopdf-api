/// Response models for the Markdown to PDF API.

/// API Response wrapper.
class MarkdowntopdfResponse {
  final String status;
  final dynamic error;
  final MarkdowntopdfData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MarkdowntopdfResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MarkdowntopdfResponse.fromJson(Map<String, dynamic> json) => MarkdowntopdfResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MarkdowntopdfData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Markdown to PDF API.

class MarkdowntopdfData {
  String? marginLeft;
  String? marginRight;
  String? marginTop;
  String? marginBottom;
  bool? landscape;
  String? pdfName;
  num? expires;
  String? downloadURL;
  num? markdownLength;
  num? htmlLength;

  MarkdowntopdfData({
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    this.landscape,
    this.pdfName,
    this.expires,
    this.downloadURL,
    this.markdownLength,
    this.htmlLength,
  });

  factory MarkdowntopdfData.fromJson(Map<String, dynamic> json) => MarkdowntopdfData(
      marginLeft: json['marginLeft'],
      marginRight: json['marginRight'],
      marginTop: json['marginTop'],
      marginBottom: json['marginBottom'],
      landscape: json['landscape'],
      pdfName: json['pdfName'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
      markdownLength: json['markdownLength'],
      htmlLength: json['htmlLength'],
    );
}

class MarkdowntopdfRequest {
  String markdown;

  MarkdowntopdfRequest({
    required this.markdown,
  });

  Map<String, dynamic> toJson() => {
      'markdown': markdown,
    };
}
