Pod::Spec.new do |s|
s.name         = "AAToolKit"
s.version      = "1.1.3"
s.summary      = "iOS swift 工具库"
s.homepage     = "https://github.com/Fxxxxxx/AAToolKit"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "Aaron Feng" => "e2shao1993@163.com" }
s.source       = { :git => 'https://github.com/Fxxxxxx/AAToolKit.git',  :tag => "#{s.version}"}
s.ios.deployment_target = '8.0'
s.source_files = 'AAToolKit/*', 'AAToolKit/**/*.swift'
s.swift_version = '5.0'
end
