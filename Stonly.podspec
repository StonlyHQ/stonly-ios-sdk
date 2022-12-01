Pod::Spec.new do |spec|
  spec.name               = "Stonly"
  spec.version            = "0.1.0"
  spec.summary            = "Stonly for iOS apps"
  spec.description        = "...dsasdaadasdasdadsdas"
  spec.homepage           = "..."
  spec.documentation_url  = "..."
  spec.license            = { :type => "MIT" }
  spec.author             = { "Stonly" => "..." }
  spec.source             = { :git => 'https://github.com/StonlyHQ/stonly-ios-sdk.git', :tag => "v0.1.0" }
  spec.swift_version      = "5.3"

  # Supported deployment targets
  spec.ios.deployment_target  = "13.2"

  # Published binaries
  spec.vendored_frameworks = "Stonly.xcframework"
end
