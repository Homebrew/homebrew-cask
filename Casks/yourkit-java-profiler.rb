cask 'yourkit-java-profiler' do
  version '2019.8-b109'
  sha256 '15543270e915fbf37f897a171665ec7465b165318517eab269327a08ec78259e'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
