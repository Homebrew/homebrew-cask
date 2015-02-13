cask :v1 => 'trailer' do
  version '1.2.0'
  sha256 '44885120d8eb872c9ee53717c2e6be525e28f74889fdbbc7d0e8abe1016c3f4c'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '4497fd075ea4742755eeac30b1c99ccfe4ed5d5ed835bea58ae4d5b5262ed96c'
  name 'Trailer'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
