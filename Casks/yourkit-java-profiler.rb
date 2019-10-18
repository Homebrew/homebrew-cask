cask 'yourkit-java-profiler' do
  version '2019.8-b123'
  sha256 'd49b62ffde035c3d7a6eba517bf71ed2fe9256ff09951185628d3b707e3c4e1d'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
