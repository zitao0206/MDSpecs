#
# Be sure to run `pod lib lint AKOCommonToolsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AKOCommonToolsKit'
    def self.smart_version
    tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
    if $?.success? then tag else "0.0.1" end
  end
  s.version          = "0.0.27"
  s.summary          = 'A short description of AKOCommonToolsKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zitao0206/AKOCommonToolsKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zitao0206' => '634376133@qq.com' }
  s.source           = { :git => 'https://github.com/zitao0206/AKOCommonToolsKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '__MODULE_NAME__=\"AKOCommonToolsKit\" MODULE_NAME=@\"AKOCommonToolsKit\"',
    'GCC_PRECOMPILE_PREFIX_HEADER' => true,
    'CLANG_ENABLE_MODULES' => 'YES',
  }
  s.ios.deployment_target = '10.0'

  s.source_files = [
    'AKOCommonToolsKit.swift',
    'Classes/**/*'
  ]
  
  # s.resource_bundles = {
  #   'AKOCommonToolsKit' => ['AKOCommonToolsKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end