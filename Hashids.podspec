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
  s.summary          = "Hashids Implementation for Objective C"
  s.description      = <<-DESC
Hashids Implementation for Objective C

Website: [http://www.hashids.org](http://www.hashids.org)

Generate short hashes from unsigned integers (like YouTube and Bitly).

* obfuscate database IDs
* use them as forgotten password hashes
* invitation codes
* store shard numbers

Hashids was designed for use in URL shortening, tracking stuff, validating accounts, or making pages private. Instead of showing items as `1`, `2`, or `3`, you could show them as `b9iLXiAa`, `EATedTBy`, and `Aaco9cy5`. Hashes depend on your salt value as well.

                       DESC
  s.homepage         = "https://hashids.github.io"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jopes Gallardo" => "jofellxcite@gmail.com" }
  s.source           = { :git => "https://github.com/jofell/Hashids.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/jofell'

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.6'

  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'Hashids' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
