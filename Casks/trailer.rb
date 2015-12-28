cask 'trailer' do
  version '1.3.11'
  sha256 '93e0b6597bee0ee96332fba00a4d16cf092bc13ba9928202cc8977eec431f8d9'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '826391ec662f84e8d2aeb8dac87b9d31d2ae3cd856ece1e02822ccfdd9eb2b17'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
