Pod::Spec.new do |s|
 
  s.name         = "CLRefresh"
 s.version      = "1.0"
 s.summary      = "快速集成上拉加载下拉刷新"
 
# 主页
s.homepage     = "https://github.com/ChenLiniOS/CLRefresh"
 s.license      = "MIT"
# 作者名称 和 邮箱
s.author       = { "陈林" => "chenlinios@sina.com" }
# 作者主页
s.social_media_url   = "http://www.cnblogs.com/jys509/"
 s.platform     = :ios, "7.0"
 s.source       = { :git => "https://github.com/ChenLiniOS/CLRefresh.git", :tag => s.version.to_s}
 s.source_files = "CLRefresh/**/*.{h,m}"
 s.public_header_files = 'CLRefresh/**/*.{h}'
#s.frameworks   = "Foundation", "UIKit", "CoreGraphics", "AudioToolbox", "CoreImage", "Accelerate", "QuartzCore"
# s.resources = "YSKit/Icon/xw_icon.bundle"
# 框架是否使用的ARC
s.requires_arc = true

end
