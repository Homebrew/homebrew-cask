cask 'yourkit-java-profiler' do
  version '2019.8,b137'
  sha256 'efe7e4cefc1e6f73802e412fd6e0e13237c81f313a797d9f1b3ba22f3d210b32'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
