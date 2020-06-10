cask 'yourkit-java-profiler' do
  version '2019.8,b139'
  sha256 '5b29141b73c9d19aa3cefd9dc8fef1e51b0d0c06febb9eb0a71503cb774ae00f'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://www.yourkit.com/download/'
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
