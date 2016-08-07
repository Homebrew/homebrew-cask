cask 'yourkit-java-profiler' do
  version '2016.02-b40'
  sha256 '7682d3fa37bf3ee6226e30147845a1297ec6758e21b0ac473c57f363ab7459f8'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
