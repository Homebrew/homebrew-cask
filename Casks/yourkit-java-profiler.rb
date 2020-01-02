cask 'yourkit-java-profiler' do
  version '2019.8,b136'
  sha256 '77b76d7588677b49554c964a3faf429c0faf12bca15e56d0899b57284443dd90'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
