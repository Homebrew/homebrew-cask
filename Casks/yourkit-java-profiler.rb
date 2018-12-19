cask 'yourkit-java-profiler' do
  version '2018.04-b87'
  sha256 'd7cc446a83552f733a0c961efbb5050839fd0f6a5ac3d483c073502b7b829579'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
