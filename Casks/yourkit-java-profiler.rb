cask 'yourkit-java-profiler' do
  version '2019.1-b112'
  sha256 '30573a49e94df23043c29230778b8ee581f894d2421e2b0fe276295e30b66637'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
