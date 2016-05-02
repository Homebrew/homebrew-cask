cask 'trailer' do
  version '1.3.19'
  sha256 '838d0c9245e4672584bc2e7a1044f86bd17409793491ce1f142a2784943d6128'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '4a2bf008f35c5dca70d840d1e05ac1fae8e079b1797dbca9c7c2a63a5faf2021'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
