cask 'yourkit-java-profiler' do
  version '2017.02-b55'
  sha256 '72f84ea2dabef0bed4ba3b17e517a12864a2fe233d6e2a320715181f80c7c987'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
