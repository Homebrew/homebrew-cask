cask 'trailer' do
  version '1.3.11'
  sha256 '93e0b6597bee0ee96332fba00a4d16cf092bc13ba9928202cc8977eec431f8d9'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'fa3d9eb33c5af7da73afa5dd9a0f95bdac606e04701448554bca72a5942def0b'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
