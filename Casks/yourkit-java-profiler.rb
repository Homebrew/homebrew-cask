cask 'yourkit-java-profiler' do
  version '2017.02-b68'
  sha256 '911fbb97bed905765979bab9acb81e8c6e868b91ebad426dd298221b29bc54f1'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
