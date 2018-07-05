#
# Be sure to run `pod lib lint Flurry-iOS-SDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Flurry-iOS-SDK'
  s.version          = '9.0.0.rc1'
  s.summary          = 'Flurry SDK for iOS'
  s.license          = { :type => 'Commercial', :file => 'Licenses/Flurry-LICENSE.txt' }
  s.description      = 'FlurrySDK consists of: Flurry for analytics tracking and reporting. Flurry Ads for Native, Full Screen Ads integration'
  s.homepage = 'http://developer.yahoo.com/flurry'
  s.author           = { 'Flurry' => 'integration@flurry.com' }
  s.source           = { :git => 'https://github.com/flurry/Flurry-iOS-SDK.git', :tag => s.version.to_s }
  s.requires_arc = false
  s.platforms   = { :ios => "8.0", :watchos => "2.0" }
  s.default_subspec = 'FlurrySDK'

  s.subspec 'FlurrySDK' do |ss|
    ss.source_files = [
      'Flurry/Flurry.h',
      'Flurry/FlurrySessionBuilder.h',
      'Flurry/FlurryConsent.h',
      'Flurry/FlurryEmpty.m'

    ]

    ss.platform   = :ios, '8.0'
    ss.frameworks = 'Foundation', 'SystemConfiguration', 'UIKit', 'Security'
    ss.weak_framework = 'WatchConnectivity', 'CoreLocation'
    ss.vendored_libraries = "Flurry/libFlurry_9.0.0.rc1.a"
  end

  s.subspec 'FlurryWatchSDK' do |ss|
    ss.source_files = [
      'Flurry/Flurry.h',
      'Flurry/FlurryWatch.h',
      'Flurry/FlurryConsent.h',
      'Flurry/FlurrySessionBuilder.h',
      'Flurry/FlurryWatchEmpty.m',
      'Flurry/FlurryEmpty.m'
    ]

    ss.platform   = :ios, '8.0'
    ss.frameworks = 'Foundation', 'WatchConnectivity', 'SystemConfiguration', 'UIKit', 'Security'
    ss.weak_frameworks = 'CoreLocation'
    ss.vendored_libraries = "Flurry/libFlurry_9.0.0.rc1.a"
  end

  s.subspec 'FlurryWatchOSSDK' do |ss|
    ss.source_files = [
      'Flurry/FlurryWatch.h',
      'Flurry/Flurry.h',
      'Flurry/FlurryConsent.h',
      'Flurry/FlurrySessionBuilder.h',
      'Flurry/FlurryWatchEmpty.m'
    ]

    ss.platform   = :watchos, '2.0'
    ss.frameworks = 'Foundation', 'WatchConnectivity'
    ss.vendored_libraries = "Flurry/libFlurryWatch_9.0.0.rc1.a"
  end

  s.subspec 'FlurryTVOS' do |ss|
     ss.source_files = [
       'Flurry/Flurry.h',
       'Flurry/FlurryConsent.h',
       'Flurry/FlurrySessionBuilder.h',
       'Flurry/FlurryEmpty.m'
     ]

     ss.platform   = :tvos, '9.0'
     ss.frameworks = 'Foundation', 'SystemConfiguration', 'UIKit', 'Security'
     ss.vendored_libraries = "Flurry/libFlurryTVOS_9.0.0.rc1.a"
   end

  s.subspec 'FlurryMessaging' do |ss|
    ss.source_files = [
        'FlurryMessaging/FlurryMessaging.h',
        'FlurryMessaging/FlurryMessagingEmpty.m'
    ]

    ss.platform   = :ios, '8.0'
    ss.vendored_libraries = "FlurryMessaging/libFlurryMessaging_9.0.0.rc1.a"
    ss.dependency 'Flurry-iOS-SDK/FlurrySDK'
 end

end
