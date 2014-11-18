cask :v1 => 'trailer' do
  version '1.1.4'
  sha256 '92c055e1c68c0a585b694b5908eb7d825814fd6fc742818d4682229a14838df1'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'dd3986e8665e8577b032277c370a2434fdd61b7263a275b6aaf0a9efa3f7a8d1'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
