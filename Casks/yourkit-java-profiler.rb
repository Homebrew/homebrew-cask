cask 'yourkit-java-profiler' do
  version '2017.02-b75'
  sha256 '1b3cd4f3e7513fbba3e05485c4e360cacf40e5eb4fcdd5736abf2da59bdd3617'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
