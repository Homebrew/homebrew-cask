cask 'yourkit-java-profiler' do
  version '2019.1-b113'
  sha256 'a3c751094b37c6c31c01d5069bfce6311d992ccdc0b77ec569d3a733f9f2abaa'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
