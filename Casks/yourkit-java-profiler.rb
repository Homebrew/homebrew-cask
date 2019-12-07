cask 'yourkit-java-profiler' do
  version '2019.8-b127'
  sha256 '1773df33d1e4ee117d6dd83b11450121bc32c865b07b02829e31738dc5e2d389'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
