cask 'yourkit-java-profiler' do
  version '2015-build-15086'
  sha256 '52f4f2c9fffb36070e55efde517cd2480d0a431c95b4db229c5811fef10dfc6f'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit_Java_Profiler_#{version.gsub('-', '_')}.app"
end
