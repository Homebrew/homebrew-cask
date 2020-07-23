cask 'yourkit-java-profiler' do
  version '2019.8,b142'
  sha256 'eba76051f0022f8d4fb0d800872bff84d958f3bde4f501926643f80aba7e8934'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
