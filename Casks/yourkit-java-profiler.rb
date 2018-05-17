cask 'yourkit-java-profiler' do
  version '2018.04-b66'
  sha256 'e659ca97a623477ffee668ec52c48279fab8c09399dadc339d51649b7e2f03fe'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
