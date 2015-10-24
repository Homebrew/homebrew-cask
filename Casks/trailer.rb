cask :v1 => 'trailer' do
  version '1.3.9'
  sha256 '4f81aee67ecb732aaeaed39190ba64ab06e67a07bef95963d207117fc6313334'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'aaf3f91888b757ec234643a9f45259fd9650a687c6146c723084e7d80979a6a4'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
