#
# Be sure to run `pod lib lint Hashids.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Hashids"
  s.version          = "0.3.1"
  s.summary          = "A short description of Hashids."
  s.description      = <<-DESC
                       An optional longer description of Hashids

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/jofell/Hashids"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jopes Gallardo" => "jofellxcite@gmail.com" }
  s.source           = { :git => "https://github.com/jofell/Hashids.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/jofell'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'Hashids' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
