cask 'yourkit-java-profiler' do
  version '2019.1-b117'
  sha256 '5defb0f8747eca5b14e75a5d1bdc90141ab150e8e2f07a275c2f581089bb7a99'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
