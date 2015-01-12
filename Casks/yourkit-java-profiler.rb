cask :v1 => 'yourkit-java-profiler' do
  version '2014-build-14116'
  sha256 '341effd59a2fb9f665e4cd4683b812db32585bb3bf1185b65960bc5f5452c34e'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'http://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app 'YourKit_Java_Profiler_2014_build_14116.app'
end
