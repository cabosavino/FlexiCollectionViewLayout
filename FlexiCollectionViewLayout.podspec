
Pod::Spec.new do |s|
  s.name             = 'FlexiCollectionViewLayout'
  s.version          = '1.0.0'
  s.summary          = 'A subclass of UICollectionViewLayout for displaying the non conventional Vertical flow layout with different sizes'
  s.description      = <<-DESC
    FlexiCollectionViewLayout is a subclass of UICollectionViewLayout for creating a vertical flow layout with different size items. Idea is to make it dynamic and make it work like the photos section in Messages App. Apps using the layout can define what size of the items that they need and can get the results like the Pinterest apps layout, Messages App photos section or something like tumbler. This layout will be useful for photos, Media(movies or videos) kins of applications where you can have a fancy layout and stand out in a croud of million apps in app store. Apps can use a bigger size items for prominent cells and probably less height but spanning whole width cell for navigational or advertisement items.
                       DESC

  s.homepage         = 'https://github.com/dPackumar/FlexiCollectionViewLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Deepak Kumar' => 'deepak.hebbar@gmail.com' }
  s.source           = { :git => 'https://github.com/dPackumar/FlexiCollectionViewLayout.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/DeepakHebbar'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Sources/FlexiCollectionViewLayout.swift'
end
