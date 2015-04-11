cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15044'
  sha256 '4a1ccfe84645026701dd45414e53ddfb948b2dd0fa88aaf5dece2fcd0c244037'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'http://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
