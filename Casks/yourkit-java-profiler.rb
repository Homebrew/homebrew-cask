cask 'yourkit-java-profiler' do
  version '2017.02-b45'
  sha256 'fe94957d5c42a9c536ee21e9401d05f81255cdec4c5537cc976e09097b1c3d2e'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
