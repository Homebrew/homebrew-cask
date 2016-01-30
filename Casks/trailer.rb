cask 'trailer' do
  version '1.3.12'
  sha256 '805ef72eb9b6ee9ff502d668548bdb87359a85ac525bedf76f4042c75d0dcba2'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '572835f7a7a74bae6f894fe500ecb20385d38cf887fc38d3be2522b2cb4e75e4'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
