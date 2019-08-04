cask 'yourkit-java-profiler' do
  version '2019.8-b108'
  sha256 'bc92c98066f3c369eaed50b8b339bb4dd13818d25340ee007a828e938228aedf'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
