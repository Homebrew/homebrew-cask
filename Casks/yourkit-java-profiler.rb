cask 'yourkit-java-profiler' do
  version '2017.02-b50'
  sha256 '3f8a621747592e2d4140e07ad8140910e94d51b28ab5ad811cd351ed880bc4b4'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
