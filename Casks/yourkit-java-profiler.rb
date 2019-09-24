cask 'yourkit-java-profiler' do
  version '2019.8-b115'
  sha256 '000a356a7991b8eacc06f2935a99066ac88ac984461f81a2658a4e469eebdfd6'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
