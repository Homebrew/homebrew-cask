cask :v1 => 'trailer' do
  version '1.2.2'
  sha256 '3e0093da72ab9debff400c1bba558dc1b7722ffcbc6c6f5e0420de7fe9c1b8f7'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '0d255433261dc91f1d07b812c96cc48268370ce748f39fbc2bcbcc08796a6675'
  name 'Trailer'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
