cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15074'
  sha256 '4bc2f87166ee078cccd551534fec27989aa8d369de2d87f3be21f3a7a2461fb3'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
