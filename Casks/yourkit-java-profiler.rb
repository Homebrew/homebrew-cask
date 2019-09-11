cask 'yourkit-java-profiler' do
  version '2019.8-b110'
  sha256 '29c91edef7a6fc6a004a80cedd2fb7f3d2d06199108d10630fd73c89aabb534b'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
