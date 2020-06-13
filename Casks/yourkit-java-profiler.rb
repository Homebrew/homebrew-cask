cask 'yourkit-java-profiler' do
  version '2019.8,b141'
  sha256 '0b717ad2c065e3eb7f3dfb5a06784b181a92345bbb8b77d296b310c231609065'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
