Pod::Spec.new do |s|
  s.name             = 'Pingpp-JK'    #名称
  s.version          = '2.2.10'             #版本号
  s.summary          = 'Just Testing.'     #简短介绍，下面是详细介绍
  s.description      = <<-DESC
                       Testing Private Podspec.
 
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = 'https://github.com/zoomyang/jkbaidu'                           #主页,这里要填写可以访问到的地址，不然验证不通过
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'           #截图
  s.license          = 'COMMERCIAL'              #开源协议
  s.author           = { 'Jarek' => '373330163@qq.com' }                   #作者信息
  s.source           = { :git => 'http://192.168.1.128/git/pingpp.git', :tag => '2.2.10' }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  # s.social_media_url = 'https://twitter.com/<twitter_username>'                       #多媒体介绍地址

  s.platform     = :ios, '8.0'            #支持的平台及版本
  s.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
 
  s.default_subspecs = "Core","Alipay","UnionPay"

  s.subspec 'Core' do |cs|
    cs.source_files = "lib/*.h","lib/Dependencies/Network/*.h"
    cs.public_header_files = "lib/*.h","lib/Dependencies/Network/*.h"
    cs.vendored_libraries = "lib/*.a","lib/Dependencies/Network/*.a"
    cs.resources = "lib/*.bundle"
    cs.frameworks = "CFNetwork","SystemConfiguration","Security"
    cs.libraries = "c++","stdc++","z"
    cs.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  end

  s.subspec 'Alipay' do |al|
    al.vendored_libraries = "lib/Channels/Alipay/*.a"
    al.vendored_frameworks = "lib/Channels/Alipay/AlipaySDK.framework"
    al.resources = "lib/Channels/Alipay/AlipaySDK.bundle"
    al.frameworks = "CoreMotion","CoreTelephony"
    al.dependency "Pingpp-JK/Core" 
  end

  s.subspec 'UnionPay' do |u|
    u.vendored_libraries = "lib/Channels/UnionPay/*.a"
    u.dependency "Pingpp-JK/Core"
  end

    s.subspec 'Wx' do |u|
    u.dependency "Pingpp-JK/Core"
  end

    s.subspec 'One' do |u|
    u.frameworks = "QuartzCore"
    u.source_files = "lib/One/*.h"
    u.public_header_files = "lib/One/*.h"
    u.vendored_libraries = "lib/One/*.a"
    u.dependency "Pingpp-JK/Core"
  end












end