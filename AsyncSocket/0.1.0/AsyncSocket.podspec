#
# Be sure to run `pod lib lint AsyncSocket.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AsyncSocket'
  s.version          = '0.1.0'
  s.summary          = 'This is a AsyncSocket.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        Testing Private Podspec.
 
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC

  s.homepage         = 'https://github.com/zoomyang/AsyncSocket'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'
  s.author           = { 'Jarek' => 'jarekyang@163.com' }
  s.source           = { :git => 'https://github.com/zoomyang/AsyncSocket.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.osx.deployment_target = '10.10'
  s.platform     = :ios, '7.0'            #支持的平台及版本
  s.requires_arc = false                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC

  s.source_files = 'AsyncSocket/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AsyncSocket' => ['AsyncSocket/Assets/*.png']
  # }

  s.public_header_files = 'AsyncSocket/Classes/**/*.h'
  s.frameworks = 'UIKit','CFNetwork'
  # s.dependency 'AFNetworking', '~> 2.3'
end
