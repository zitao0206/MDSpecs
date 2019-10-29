#
# Be sure to run `pod lib lint EasyLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EasyLayout'
    def self.smart_version
    tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
    if $?.success? then tag else "0.0.1" end
  end
  s.version          = "1.0.5"
  s.summary          = 'A short description of EasyLayout.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/leon0206/EasyLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leon0206' => '634376133@qq.com' }
  s.source           = { :git => 'https://github.com/leon0206/EasyLayout.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'EasyLayout/Classes/**/*'
  
  s.preserve_paths = "#{s.name}/Classes/**/*","Framework/**/*", "#{s.name}/Assets/**/*",

  $source = ENV['use_source']
  $source_name = ENV["#{s.name}_use_source"]

  $use_source=nil
  if $source_name=='1'
    $use_source = true
  elsif $source_name=='0'
    $use_source = false
  else
    if $source == '1'
      $use_source = true
    end
  end

  tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
  if tag && !tag.empty?
    $use_source=true
  end

  if $use_source==true
    # ！！！！！！源码方式，需要加载哪些代码和资源，请在这里做相应变更
    s.source_files = "#{s.name}/Classes/**/*"
  else
    # ！！！！！！以下为固定写法，理论上不要动它
    s.vendored_frameworks = "Framework/#{s.version}/*.framework"
  end

end
