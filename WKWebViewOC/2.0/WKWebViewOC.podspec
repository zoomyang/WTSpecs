Pod::Spec.new do |s|
  s.name             = 'WKWebViewOC'    #名称
  s.version          = '2.0'             #版本号
  s.summary          = 'Just Testing.'     #简短介绍，下面是详细介绍
  s.description      = <<-DESC
                       Testing Private Podspec.
 
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = 'http://www.baidu.com'                           #主页,这里要填写可以访问到的地址，不然验证不通过
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'           #截图
  s.license          = 'MIT'              #开源协议
  # s.license = "Copyright (c) 2015年 Lisa. All rights reserved."
  s.author           = { 'Jarek' => '373330163@qq.com' }                   #作者信息
  # http://192.168.1.128/git/WKWebView.git
  s.source           = { :git => 'https://github.com/zoomyang/WKWebView.git', :tag => '2.0' }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  # s.social_media_url = 'https://twitter.com/<twitter_username>'                       #多媒体介绍地址

  s.platform     = :ios, '8.0'            #支持的平台及版本
  s.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
 
  s.source_files = 'WKWebViewOC/WKWebViewOC/WkwebView/*.{h,m,html,png}'     #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置
  # s.resources = 'WKWebViewOC/WKWebViewOC/WkwebView/*.png'
end