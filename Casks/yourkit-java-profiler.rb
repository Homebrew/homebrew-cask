cask 'yourkit-java-profiler' do
  version '2016.02-b43'
  sha256 '7792ba7cb9142a125b295f8ceaf51112108cb36916077c057bab36e0f6d72905'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
