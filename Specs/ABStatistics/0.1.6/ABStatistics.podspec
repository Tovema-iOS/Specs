#
# Be sure to run `pod lib lint Statistics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ABStatistics'
  s.version          = '0.1.6'
  s.summary          = 'A short description of Statistics.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitee.com/Surmobi-iOS/ABStatistics'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CodingPub' => 'lxb_0605@qq.com' }
  s.source           = { :git => 'https://gitee.com/Surmobi-iOS/ABStatistics.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Statistics/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Statistics' => ['Statistics/Assets/*.png']
  # }

  s.public_header_files = ['Statistics/Classes/*.h', 'Statistics/Classes/Model/*.h']
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.dependency 'YYModel', '~> 1.0'
  s.dependency 'GBDeviceInfo'
  s.dependency 'WCDB', '~> 1.0'
  s.dependency 'TMInterface', '~> 1.0'
  s.dependency 'TMEncrypt', '~> 1.0'
  s.dependency 'TMReachability', '~> 1.0'
  s.dependency 'ABInterface', '~> 0.1.0'
end
