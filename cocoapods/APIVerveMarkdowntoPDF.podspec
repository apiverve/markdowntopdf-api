Pod::Spec.new do |s|
  s.name             = 'APIVerveMarkdowntoPDF'
  s.version          = '1.2.3'
  s.summary          = 'Markdown to PDF is a PDF generator API that converts markdown text into professionally formatted PDF documents and returns a temporary...'
  s.description      = <<-'DESC'
Markdown to PDF is a PDF generator API that converts markdown text into professionally formatted PDF documents and returns a temporary download URL for each file.

This iOS/macOS SDK provides a convenient way to access the Markdown to PDF from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/markdowntopdf?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/markdowntopdf-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveMarkdowntoPDF/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
