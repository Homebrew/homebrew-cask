cask 'yourkit-java-profiler' do
  version '2016.02-b33'
  sha256 'ea807bf873d82669a001d9afc07d56a750d015ae84cba9b51d039b0ff413f3ae'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
