cask :v1 => 'trailer' do
  version '1.3.5'
  sha256 '906b13316d243c7791c1258f5b895a1528148808c9c3cc1e9dc7a36c50495ebe'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'aaf3f91888b757ec234643a9f45259fd9650a687c6146c723084e7d80979a6a4'
  name 'Trailer'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
