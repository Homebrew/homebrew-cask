cask :v1 => 'trailer' do
  version '1.3.1'
  sha256 '7be6fb7479d51d31ff535bc5c61a2a2532149a0caf866788014d5ee12938ed1e'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '0d255433261dc91f1d07b812c96cc48268370ce748f39fbc2bcbcc08796a6675'
  name 'Trailer'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
