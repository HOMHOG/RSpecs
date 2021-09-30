#
# Be sure to run `pod lib lint ComponentA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ComponentA'
  s.version          = '0.5.0'
  s.summary          = 'A short description of ComponentA.'
  s.default_subspec = 'framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/HOMHOG/ComponentA'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HOMHOG' => '861573477@qq.com' }
  s.source           = { :git => 'https://github.com/HOMHOG/ComponentA.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'Product/ComponentA/ComponentA.framework/Headers/*.{h}'

  #s.vendored_frameworks = 'Product/ComponentA/ComponentA.framework'

  s.subspec 'sourceCode' do |sc|
    sc.source_files = 'ComponentA/Classes/Target/*.{h,m}'
  end

  s.subspec 'framework' do |sdk|

    sdk.vendored_frameworks = 'Product/ComponentA/ComponentA.framework';

  end

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  
  # s.resource_bundles = {
  #   'ComponentA' => ['ComponentA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CTMediator'
end
