cask 'yourkit-java-profiler' do
  version '2019.1-b114'
  sha256 '18f1693f60b07f1bae6ab0ecd6745611fa8c9a2afe12a58739517d0dca9c1aa4'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
