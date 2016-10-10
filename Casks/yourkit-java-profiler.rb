cask 'yourkit-java-profiler' do
  version '2016.02-b42'
  sha256 '1848d44cd75c57284d985d47ee2ba26fb002e67363e0c6dbb8c4ed93bf85d06f'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
