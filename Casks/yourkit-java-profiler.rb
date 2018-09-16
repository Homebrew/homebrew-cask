cask 'yourkit-java-profiler' do
  version '2018.04-b83'
  sha256 '0d8627b40725fdc3bcc8501d2d31ec8de41f9cc5a2a641e3269ac0a33afe15b7'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
