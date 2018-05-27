cask 'yourkit-java-profiler' do
  version '2018.04-b70'
  sha256 'dc6f91da7b47f530126d5e84217e6121e52231c18603a2d2fb5f297c9d528087'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
