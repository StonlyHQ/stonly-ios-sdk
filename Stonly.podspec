Pod::Spec.new do |s|
  s.name           = 'Stonly'
  s.homepage        = 'https://stonly.com'
  s.summary        = 'Ios'
  s.version        = '0.1.0'
  s.author         = { 'Stonly' => 'remy.baroukh@stonly.com' }
  s.platform       = :ios, "10.0"
  s.license      = {
    :type => 'Comercial',
    :text => "-"
  }
  s.source       = { :path => '.' }
  s.vendored_frameworks = 'Stonly.xcframework'
  s.ios.deployment_target = '11.0'
  s.swift_version      = "5.3"

end
