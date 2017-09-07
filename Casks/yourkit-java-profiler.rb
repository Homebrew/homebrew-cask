cask 'yourkit-java-profiler' do
  version '2017.02-b63'
  sha256 '8456f0544c6ddb9c641a12c489080aa905ecbf70419a833778ee1bcd8365d332'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
