cask 'yourkit-java-profiler' do
  version '2016.02-b46'
  sha256 '11a78cd4b1c631179789a24718240d3b6cb2ca0cd0f2c7fbee069b0a1b12b4c9'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
