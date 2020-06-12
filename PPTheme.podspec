Pod::Spec.new do |spec|

  spec.name         = "PPTheme"

  spec.version      = "0.1.0"

  spec.summary      = "Theme for iOS 动态切换主题/换肤 Dark Model 暗黑模式."

  spec.homepage     = "https://github.com/pengpaiGuo/PPTheme"

  spec.license      = "MIT"

  spec.author       = { "pengpaiGuo" => "pengpaiguo@163.com" }

  spec.ios.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/pengpaiGuo/PPTheme.git", :tag => spec.version }

  spec.source_files  = "PPTheme/**/*.{h,m}"

end
