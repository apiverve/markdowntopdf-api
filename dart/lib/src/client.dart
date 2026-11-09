import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

/// Validation rule for a parameter.
class ValidationRule {
  final String type;
  final bool required;
  final num? min;
  final num? max;
  final int? minLength;
  final int? maxLength;
  final String? format;
  final List<String>? enumValues;

  const ValidationRule({
    required this.type,
    required this.required,
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
    this.format,
    this.enumValues,
  });
}

/// Exception thrown when parameter validation fails.
class MarkdowntopdfValidationException implements Exception {
  final List<String> errors;

  MarkdowntopdfValidationException(this.errors);

  @override
  String toString() => 'MarkdowntopdfValidationException: ${errors.join("; ")}';
}

/// Format validation patterns.
final _formatPatterns = {
  'email': RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$'),
  'url': RegExp(r'^https?://.+'),
  'ip': RegExp(r'^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$'),
  'date': RegExp(r'^\d{4}-\d{2}-\d{2}$'),
  'hexColor': RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'),
};

/// Markdown to PDF API client.
///
/// For more information, visit: https://apiverve.com/marketplace/markdowntopdf?utm_source=dart&utm_medium=referral&utm_content=readme
///
/// Parameters:
/// * [markdown] (required) - Markdown text to convert (max 100,000 characters) [maxLength: 500000]
/// * [format] - Paper size
/// * [landscape] - Set to true for landscape orientation
/// * [marginTop] - The top margin in inches [min: 0, max: 5]
/// * [marginRight] - The right margin in inches [min: 0, max: 5]
/// * [marginBottom] - The bottom margin in inches [min: 0, max: 5]
/// * [marginLeft] - The left margin in inches [min: 0, max: 5]
/// * [css] - Stylesheet applied to the rendered markdown, e.g. body { font-family: Georgia, serif } table { border-collapse: collapse } [maxLength: 100000]
/// * [headerTemplate] - HTML printed at the top of every page. Spans with class pageNumber, totalPages, date or title are filled in. Use inline styles with a font-size (Chromium defaults to a tiny font) and leave room with marginTop [format: date]
/// * [footerTemplate] - HTML printed at the bottom of every page, with the same placeholders as headerTemplate, e.g. <span class="pageNumber"></span> of <span class="totalPages"></span>
class MarkdowntopdfClient {
  final String apiKey;
  final String baseUrl;
  final http.Client _httpClient;

  /// Validation rules for parameters.
  static final Map<String, ValidationRule> _validationRules = <String, ValidationRule>{
    'markdown': ValidationRule(type: 'string', required: true, maxLength: 500000),
    'format': ValidationRule(type: 'string', required: false),
    'landscape': ValidationRule(type: 'boolean', required: false),
    'marginTop': ValidationRule(type: 'number', required: false, min: 0, max: 5),
    'marginRight': ValidationRule(type: 'number', required: false, min: 0, max: 5),
    'marginBottom': ValidationRule(type: 'number', required: false, min: 0, max: 5),
    'marginLeft': ValidationRule(type: 'number', required: false, min: 0, max: 5),
    'css': ValidationRule(type: 'string', required: false, maxLength: 100000),
    'headerTemplate': ValidationRule(type: 'string', required: false, format: 'date'),
    'footerTemplate': ValidationRule(type: 'string', required: false),
  };

  MarkdowntopdfClient(this.apiKey, {
    this.baseUrl = 'https://api.apiverve.com/v1/markdowntopdf',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  /// Validates parameters against defined rules.
  /// Throws [MarkdowntopdfValidationException] if validation fails.
  void _validateParams(Map<String, dynamic> params) {
    final errors = <String>[];

    for (final entry in _validationRules.entries) {
      final paramName = entry.key;
      final rule = entry.value;
      final value = params[paramName];

      // Check required
      if (rule.required && (value == null || (value is String && value.isEmpty))) {
        errors.add('Required parameter [$paramName] is missing');
        continue;
      }

      if (value == null) continue;

      // Type-specific validation
      if (rule.type == 'integer' || rule.type == 'number') {
        final numValue = value is num ? value : num.tryParse(value.toString());
        if (numValue == null) {
          errors.add('Parameter [$paramName] must be a valid ${rule.type}');
          continue;
        }
        if (rule.min != null && numValue < rule.min!) {
          errors.add('Parameter [$paramName] must be at least ${rule.min}');
        }
        if (rule.max != null && numValue > rule.max!) {
          errors.add('Parameter [$paramName] must be at most ${rule.max}');
        }
      } else if (rule.type == 'string' && value is String) {
        if (rule.minLength != null && value.length < rule.minLength!) {
          errors.add('Parameter [$paramName] must be at least ${rule.minLength} characters');
        }
        if (rule.maxLength != null && value.length > rule.maxLength!) {
          errors.add('Parameter [$paramName] must be at most ${rule.maxLength} characters');
        }
        if (rule.format != null && _formatPatterns.containsKey(rule.format)) {
          if (!_formatPatterns[rule.format]!.hasMatch(value)) {
            errors.add('Parameter [$paramName] must be a valid ${rule.format}');
          }
        }
      }

      // Enum validation
      if (rule.enumValues != null && rule.enumValues!.isNotEmpty) {
        if (!rule.enumValues!.contains(value.toString())) {
          errors.add('Parameter [$paramName] must be one of: ${rule.enumValues!.join(", ")}');
        }
      }
    }

    if (errors.isNotEmpty) {
      throw MarkdowntopdfValidationException(errors);
    }
  }

  /// Execute a request to the Markdown to PDF API.
  ///
  /// Parameters are validated before sending the request.
  Future<MarkdowntopdfResponse> execute(Map<String, dynamic> params) async {
    // Validate parameters
    _validateParams(params);
    if (apiKey.isEmpty) {
      throw MarkdowntopdfException('API key is required. Get your API key at: https://apiverve.com');
    }

    try {
      final response = await _httpClient.post(
        Uri.parse(baseUrl),
        headers: {
          'x-api-key': apiKey,
          'Content-Type': 'application/json',
        },
        body: jsonEncode(params),
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return MarkdowntopdfResponse.fromJson(json);
      } else if (response.statusCode == 401) {
        throw MarkdowntopdfException('Invalid API key');
      } else if (response.statusCode == 404) {
        throw MarkdowntopdfException('Resource not found');
      } else {
        throw MarkdowntopdfException('API error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is MarkdowntopdfException) rethrow;
      throw MarkdowntopdfException('Request failed: $e');
    }
  }


  /// Close the HTTP client.
  void close() {
    _httpClient.close();
  }
}

/// Exception thrown by the Markdown to PDF API client.
class MarkdowntopdfException implements Exception {
  final String message;

  MarkdowntopdfException(this.message);

  @override
  String toString() => 'MarkdowntopdfException: $message';
}
