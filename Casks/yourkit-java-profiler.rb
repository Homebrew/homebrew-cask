cask 'yourkit-java-profiler' do
  version '2016.02-b45'
  sha256 'fbbca98bd9166d638a71cebdaab332c58b43154cc8fe04e1b344bc248ee21f11'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
