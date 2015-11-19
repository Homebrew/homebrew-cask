cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15076'
  sha256 '0025b05f1a5be4b598ad1e9711b1d46109740e941da10e5762bceb4b028280c1'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
