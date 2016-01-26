cask 'yourkit-java-profiler' do
  version '2015-build-15084'
  sha256 'd92862a6ffcb70a8cbfcd851e78c9ab5d2c1e57ec3feb24dcc374e1be5a3cb63'

  url "https://www.yourkit.com/download/yjp-#{version}-mac.zip"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/overview/'
  license :commercial

  app "YourKit_Java_Profiler_#{version.gsub('-', '_')}.app"
end
