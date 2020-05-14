cask 'yourkit-java-profiler' do
  version '2019.8,b138'
  sha256 '9f11bc0b276419f9de99ed616eb857d5cb1a5be89e822a1e852c8b9fba47a6ab'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
