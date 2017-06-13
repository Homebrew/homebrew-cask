cask 'yourkit-java-profiler' do
  version '2017.02-b61'
  sha256 '683bc0b0ab9513410fb1a544673c926f44b2b1ca640a7174dc54cc2e020efb91'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
