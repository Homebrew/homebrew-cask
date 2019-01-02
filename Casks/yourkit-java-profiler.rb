cask 'yourkit-java-profiler' do
  version '2018.04-b88'
  sha256 '29a985791e859407c22e9dadd6c069a42e4908d1f3c0e6759e5b778f91fff98d'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
