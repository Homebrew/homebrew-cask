cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15050'
  sha256 'e090896ca3dc57f05221b662b7fce74fc75edfcc24aaf3a06c098f2c1dc2db8a'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'http://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
