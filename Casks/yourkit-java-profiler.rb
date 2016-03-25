cask 'yourkit-java-profiler' do
  version '2016.02-b31'
  sha256 'f391c8427d790d564e3905651fddcd3636a458c4449068dd504b4af312dd77b6'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
