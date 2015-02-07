cask :v1 => 'yourkit-java-profiler' do
  version '2014-build-14118'
  sha256 'b74c6c5d88445d01c497ad4e027f9416e9e75cce47572843f75e450f959dcc9d'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'http://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
