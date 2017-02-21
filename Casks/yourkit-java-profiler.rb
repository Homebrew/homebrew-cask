cask 'yourkit-java-profiler' do
  version '2017.02-b47'
  sha256 '36f1f2538aeb6b7e83881d92d87e649e72b5e1e3581a092dd328047d31b14300'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
