cask 'yourkit-java-profiler' do
  version '2016.02-b35'
  sha256 'f9e31e0d2ea67b6b6cc7c4d71a047e15a52fbc68d8efdc81d1ea618de83cf09b'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
