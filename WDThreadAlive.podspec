#
# Be sure to run `pod lib lint WDThreadAlive.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WDThreadAlive'
  s.version          = '1.0.1'
  s.summary          = 'A short description of WDThreadAlive.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'git@github.com:weidongjiang/WDThreadAlive.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'weidongjiang' => '275201991@qq.com' }
  s.source           = { :git => 'git@github.com:weidongjiang/WDThreadAlive.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = 'WDThreadAlive/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  
  # s.resource_bundles = {
  #   'WDThreadAlive' => ['WDThreadAlive/Assets/*.png']
  # }
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
