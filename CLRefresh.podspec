Pod::Spec.new do |s|
# 名称 使用的时候pod search [name]
s.name         = "CLRefresh"
# 代码库的版本
s.version      = "0.0.2"
# 简介
s.summary      = "快速集成上拉加载下拉刷新"
# 主页
s.homepage     = "https://github.com/ChenLiniOS/CLRefresh.git"
# 许可证书类型，要和仓库的LICENSE 的类型一致
s.license      = "MIT"
# 作者名称 和 邮箱
s.author       = { "陈林" => "chenlinios@sina.com" }
# 作者主页
s.social_media_url   = "http://www.cnblogs.com/jys509/"
# 代码库最低支持的版本
s.platform     = :ios, "7.0"
# 代码的Clone 地址 和 tag 版本
s.source       = { :git => "https://github.com/ChenLiniOS/CLRefresh.git", :tag => s.version.to_s }
# 如果使用pod 需要导入哪些资源
s.source_files = "CLRefresh/**/*.{h,m}"
# 这句很重要，如果.h里有嵌套需要用到
s.public_header_files = 'CLRefresh/**/*.{h}'
#s.frameworks   = "Foundation", "UIKit", "CoreGraphics", "AudioToolbox", "CoreImage", "Accelerate", "QuartzCore"
# s.resources = "YSKit/Icon/xw_icon.bundle"
# 框架是否使用的ARC
s.requires_arc = true

end