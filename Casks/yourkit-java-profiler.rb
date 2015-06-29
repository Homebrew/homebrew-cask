cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15054'
  sha256 '11e22f87ec2427f03c5ab04fec3b26abcf606f414012c7c330d71498f103c340'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
