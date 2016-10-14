cask 'vimr' do
  version '0.8.0-32'
  sha256 '8660e7d5157b3165faab8a228f67a1bd63016c51bc300af131b90edc18dda678'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*}, '')}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'cfd99e9ff5feb321bde77647d980df524d1522c8203df977f7a245254020c250'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
