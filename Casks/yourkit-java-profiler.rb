cask 'yourkit-java-profiler' do
  version '2017.02-b57'
  sha256 'd801bf4d47f5e4629a2dacd70e737e5e0da8fd83f0022cb0a28e4e211605698a'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
