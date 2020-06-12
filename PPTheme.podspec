Pod::Spec.new do |spec|

  spec.name         = "PPTheme"

  spec.version      = "0.2.0"

  spec.summary      = "Theme for iOS 动态切换主题/换肤 Dark Model 暗黑模式."

  spec.homepage     = "https://github.com/pengpaiGuo/PPTheme"

  spec.license      = "MIT"

  spec.author       = { "pengpaiGuo" => "pengpaiguo@163.com" }

  spec.ios.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/pengpaiGuo/PPTheme.git", :tag => spec.version }

  spec.source_files  = "PPTheme/PPTheme/*.{h,m}"

  spec.subspec "PPThemeExt" do |sss|
    sss.source_files = "PPTheme/PPTheme/PPThemeExt/*.{h,m}"
  end

  spec.subspec "PPThemePickers" do |sss|
    sss.source_files = "PPTheme/PPTheme/PPThemePickers/*.{h,m}"
    sss.dependency "PPTheme/PPThemeExt"
  end

  spec.subspec "PPThemeAttributes" do |sss|
    sss.source_files = "PPTheme/PPTheme/PPThemeAttributes/*.{h,m}"
  end


end
