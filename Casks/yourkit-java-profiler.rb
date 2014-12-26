cask :v1 => 'yourkit-java-profiler' do
  version '2014-build-14114'
  sha256 'd64d6496a7ae8e240ab5c32f6b1727898cd69a8f2e2716cf9901e3a9cc8a4c26'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'http://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app 'YourKit_Java_Profiler_2014_build_14114.app'
end
