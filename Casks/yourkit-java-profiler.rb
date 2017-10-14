cask 'yourkit-java-profiler' do
  version '2017.02-b66'
  sha256 '3fae1cfbd25ad5d7676f7e26d7a87ad9a98f3943cda167a751948c3757847a9c'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
