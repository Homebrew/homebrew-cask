cask 'trailer' do
  version '1.3.11'
  sha256 '93e0b6597bee0ee96332fba00a4d16cf092bc13ba9928202cc8977eec431f8d9'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :checkpoint => 'b9670349d1deaecee8ef4ce48d49bd4364e20c372b661de63dc0dc426cd65f57'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
