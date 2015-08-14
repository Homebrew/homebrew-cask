cask :v1 => 'yourkit-java-profiler' do
  version '2015-build-15072'
  sha256 '5b77c0d86b1d60f93bbbc29e30f1f4288ec83f0c16a1061fe16806336c1014df'

  url "http://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial
  tags :vendor => 'YourKit'

  app "YourKit_Java_Profiler_#{version.gsub('-','_')}.app"
end
