Pod::Spec.new do |s|
  s.name             = 'TwitterQuery'
  s.version          = '0.1.0'
  s.summary          = 'Twitter search query builder.'
  s.description      = <<-DESC
Twitter search query builder.
                       DESC

  s.homepage         = 'https://github.com/noppefoxwolf/TwitterQuery'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '🦊Tomoya Hirano' => 'noppelabs@gmail.com' }
  s.source           = { :git => 'https://github.com/noppefoxwolf/TwitterQuery.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/noppefoxwolf'
  s.ios.deployment_target = '8.0'
  s.source_files = 'TwitterQuery/Classes/**/*'
end
