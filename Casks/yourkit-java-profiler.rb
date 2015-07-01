cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15064'
  sha256 'd008782cc5f5a68aaf7fc24abaf8014bd99ba6360e77d6ecfba282022a495d78'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
