#
# Be sure to run `pod lib lint HDCollectionDataSource.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HDCollectionDataSource"
  s.version          = "1.0"
  s.summary          = "HDCollectionDataSource is to get rid of Collection view datasource methods."
  s.description      = "HDCollectionDataSource is to get rid of Collection view datasource methods. Get view controller cleaned."
  s.homepage         = "https://github.com/HarshitDaftary/HDCollectionDataSource"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Harshit Daftary" => "daftaryharshit@yahoo.co.in" }
  s.source           = { :git => "https://github.com/HarshitDaftary/HDCollectionDataSource.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/daftaryharshit'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'HDCollectionDataSource' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
