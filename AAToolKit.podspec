Pod::Spec.new do |s|

s.name         = "AAToolKit"
s.version      = "1.0.0"
s.summary      = "iOS swift 工具库"

s.homepage     = "https://github.com/Fxxxxxx/AAToolKit"
#s.screenshots  = ""

s.license      = { :type => "MIT", :file => "LICENSE" }

s.authors            = { "Aaron Feng" => "e2shao1993@163.com" }

s.swift_version = "5"

s.ios.deployment_target = "8.0"

s.source       = { :git => "https://github.com/Fxxxxxx/AAToolKit.git", :tag => s.version }

s.source_files  = "AAToolKitDemo/AAToolKitDemo/AAToolKit/*.swift"

s.requires_arc = true
s.framework = "UIKit"
#s.dependency   'Kingfisher'

