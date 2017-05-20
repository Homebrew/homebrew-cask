cask 'yourkit-java-profiler' do
  version '2017.02-b59'
  sha256 '6715fe863e7d484d3690f1294bfa335350191f2f13a93801617615bd79add16e'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
