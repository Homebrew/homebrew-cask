cask 'yourkit-java-profiler' do
  version '2016.02-b44'
  sha256 '17496acc087928594e7186826866739078638a67f100328ea957d3588f9cc66f'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
