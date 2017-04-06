Pod::Spec.new do |s|
  s.name             = 'BaiduMapKit'    #名称
  s.version          = '3.2.1'             #版本号
  s.summary          = 'Just Testing.'     #简短介绍，下面是详细介绍
  s.description      = <<-DESC
                       Testing Private Podspec.
 
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = 'https://github.com/zoomyang/jkbaidu'                           #主页,这里要填写可以访问到的地址，不然验证不通过
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'           #截图
  s.license          = 'MIT'              #开源协议
  s.author           = { 'Jarek' => '373330163@qq.com' }                   #作者信息
  s.source           = { :git => 'http://192.168.1.128/git/baidukit.git', :tag => s.version.to_s }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  # s.social_media_url = 'https://twitter.com/<twitter_username>'                       #多媒体介绍地址

  s.platform     = :ios, '7.0'            #支持的平台及版本
  s.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
 
  s.source_files = 'BaiduMapKit/**/Headers/*.h'     #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置
  s.public_header_files = 'BaiduMapKit/**/Headers/*.h' #公开头文件地址
  s.resources = 'BaiduMapKit/BaiduMapAPI_Map.framework/Resources/mapapi.bundle'
  s.vendored_frameworks =  'BaiduMapKit/*.framework'
  # s.vendored_libraries = 'BaiduNaviSDK/*.a','BaiduNaviSDK/thirdlibs/*.a'

  s.frameworks = 'AudioToolbox','ImageIO','SystemConfiguration','CoreText','QuartzCore','Security','AVFoundation','CoreTelephony','CoreMotion','CoreLocation','MediaPlayer','Security','JavaScriptCore','OpenGLES','GLKit'                 #所需的framework，多个用逗号隔开
  #s.dependency 'AFNetworking', '~> 2.3'   #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency
  s.dependency 'OpenSSL'
  s.libraries = "c++",'stdc++.6.0.9','sqlite3','z.1.2.5'
end