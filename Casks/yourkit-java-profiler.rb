cask 'yourkit-java-profiler' do
  version '2016.02-b29'
  sha256 'd65adc15bbdc030767d909e4ce78a26fbae462862665b3a0de87e88bc07a3a7f'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
