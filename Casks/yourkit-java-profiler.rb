cask 'yourkit-java-profiler' do
  version '2018.04-b81'
  sha256 '710bd85a0ac1db3daa84073d882c0c13efdc550952913c87da28f35d5645add4'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
