cask 'trailer' do
  version '1.3.14'
  sha256 '414c814c16f1436f21145e14cb692a266936721494300624c1e1a79ce34d9f76'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'cb810367436cbe85c82ea0e642b9e678f9bd7ead9ab4cbed8a97fa49be240ab8'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
