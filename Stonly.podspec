Pod::Spec.new do |spec|
  spec.name               = "Stonly"
  spec.version            = "1.0.25-BETA1"
  spec.summary            = "Stonly for iOS apps"
  spec.description        = "Stonly implemation code for iOS native apps"
  spec.homepage           = "https://stonly.com"
  spec.documentation_url  = "https://stonly.com"
  spec.license           = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Stonly" => "..." }
  spec.source             = { :git => 'https://github.com/StonlyHQ/stonly-ios-sdk.git', :tag => "v1.0.25-BETA1" }
  spec.swift_version      = "5.5.2"

  # Supported deployment targets
  spec.ios.deployment_target  = "13.0" 
  
  # Published binaries
  spec.vendored_frameworks = "Stonly.xcframework"
end
