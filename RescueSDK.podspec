Pod::Spec.new do |s|
  s.name         = "RescueSDK"
  s.version      = "2.2.1"
  s.summary      = "LogMeIn Rescue SDK for iOS."
  s.description  = <<-DESC
  The Rescue In-App Support iOS SDK allows your customers to establish a Rescue support session within your app.  
                   DESC
  s.homepage     = "https://www.logmeinrescue.com/"
  s.license      = { :type => 'Custom', :file => 'LICENSE' }
  s.author       = "LogMeIn Inc."
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/LogmeinRescue/iOS-SDK.git", :tag => s.version.to_s }
  s.user_target_xcconfig = { "EMBEDDED_CONTENT_CONTAINS_SWIFT" => "YES", "CLANG_MODULES_AUTOLINK" => "YES" }

  s.default_subspec = "Core"

  s.subspec 'Core' do |core|
    core.vendored_frameworks = "Frameworks/RescueCore.framework"
  end

  s.subspec 'DisplayStreaming' do |display_streaming|
    display_streaming.vendored_frameworks = "Frameworks/RescueDisplayStreaming.framework"
    display_streaming.dependency "RescueSDK/Core"
  end

  s.subspec 'CameraStreaming' do |camera_streaming|
    camera_streaming.vendored_frameworks = "Frameworks/RescueCameraStreaming.framework"
    camera_streaming.dependency "RescueSDK/Core"
  end
end
