cask :v1 => 'trailer' do
  version '1.3.0'
  sha256 '1e546d9375e761e4d3ff3a74c218f39b89b9a0e0c4731108558249f0d1e1dc0f'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '0d255433261dc91f1d07b812c96cc48268370ce748f39fbc2bcbcc08796a6675'
  name 'Trailer'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
