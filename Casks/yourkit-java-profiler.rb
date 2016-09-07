cask 'yourkit-java-profiler' do
  version '2016.02-b41'
  sha256 '2778fe509870597b615a883664b3503c85d93089bd851676d26d5b54dbda0348'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
