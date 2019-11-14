cask 'yourkit-java-profiler' do
  version '2019.8-b126'
  sha256 '88044b0742f4b904c026845c3a95015a74d00d09fff767a2da378c63b4ed0193'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
