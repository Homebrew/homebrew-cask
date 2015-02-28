cask :v1 => 'yourkit-java-profiler' do
  version '2014-build-14120'
  sha256 '88ae356404b150121522a941dbd5efdaa796b29cbbb7ca4cd173e893bfbbbf51'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'http://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
