cask 'yourkit-java-profiler' do
  version '2019.1-b133'
  sha256 '24d19c112bde9df1a1690cfe113e1b6a073bc3aa327b9aa537da82c34cfe50da'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
