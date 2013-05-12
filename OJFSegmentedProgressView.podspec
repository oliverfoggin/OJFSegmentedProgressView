Pod::Spec.new do |s|
  s.name         = "OJFSegmentedProgressView"
  s.version      = "0.0.1"
  s.summary      = "A segmented progress view to easily replace UIProgressView."
  s.homepage     = "http://www.oliverfoggin.com"
  s.license      = 'MIT'
  s.author       = { "Oliver Foggin" => "oliverfoggin@me.com" }
  s.source       = { :git => "https://github.com/ojfoggin/OJFSegmentedProgressView.git" }
  s.platform     = :ios
  s.source_files = 'OJFSegmentedProgressView.h,m'
  s.requires_arc = true
end
