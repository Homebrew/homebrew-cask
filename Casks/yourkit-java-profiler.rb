cask 'yourkit-java-profiler' do
  version '2018.04-b64'
  sha256 '1d0c41cea1f2fcdc209635cde4a4bfff888a59df4d5a5f4e0fe7236b7c716bb2'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
