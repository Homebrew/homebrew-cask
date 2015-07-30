cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15068'
  sha256 'f4724f9d8d97dec025d5cb6c15227ae14036bb7d152696b77023300f17628cd7'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
