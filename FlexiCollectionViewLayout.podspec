#
# Be sure to run `pod lib lint FlexiCollectionViewLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlexiCollectionViewLayout'
  s.version          = '0.1.0'
  s.summary          = 'A subclass of UICollectionViewLayout for displaying the non conventional Vertical flow layout with different sizes'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
FlexiCollectionViewLayout is a subclass of UICollectionViewLayout for creating a vertical flow layout with different size items. Idea is to make it dynamic and make it work like the photos section in Messages App. Apps using the layout can define what size of the items that they need and can get the results like the Pinterest apps layout, Messages App photos section or something like tumbler. This layout will be useful for photos, Media(movies or videos) kins of applications where you can have a fancy layout and stand out in a croud of million apps in app store. Apps can use a bigger size items for prominent cells and probably less height but spanning whole width cell for navigational or advertisement items.
                       DESC

  s.homepage         = 'https://github.com/dPackumar/FlexiCollectionViewLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Deepak Kumar' => 'deepak.hebbar@gmail.com' }
  s.source           = { :git => 'https://github.com/dPackumar/FlexiCollectionViewLayout.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FlexiCollectionViewLayout/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FlexiCollectionViewLayout' => ['FlexiCollectionViewLayout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
