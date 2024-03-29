Pod::Spec.new do |s|
  s.name         = "AviarySDK"
  s.version      = "3.1.1"
  s.summary      = "Aviary's photo editing SDK for iOS."
  s.homepage     = "http://www.aviary.com/ios"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2013 Aviary, Inc. All rights reserved.
      LICENSE
  }
  s.author       = { "Aviary, Inc." => "api@aviary.com" }
  s.source       = { :git => "https://github.com/bfcrampton/AviarySDK.git" }
  s.platform     = :ios, '5.0'
  s.source_files = 'AviarySDK-3.1.1-Basic/AviarySDK/Headers/*'
  s.resource  = "AviarySDK-3.1.1-Basic/AviarySDK/Resources/AviarySDKResources.bundle"
  s.preserve_paths = "AviarySDK-3.1.1-Basic/AviarySDK/libAviarySDK.a"
  s.frameworks = 'QuartzCore', 'Accelerate', 'StoreKit', 'CoreData', 'CoreText', 'MessageUI', 'OpenGLES', 'SystemConfiguration'
  s.weak_framework = 'AdSupport'
  s.libraries   = 'AviarySDK', 'z', 'sqlite3'
  s.requires_arc = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/AviarySDK/AviarySDK-3.1.1-Basic/AviarySDK"' }
end