cask 'yourkit-java-profiler' do
  version '2017.02-b71'
  sha256 '2eaee321292eb940330bb7cafd0618e6df75c650b0b01a6e028a2d71f0c6f187'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
