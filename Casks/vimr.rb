cask 'vimr' do
  version '0.12.2-153'
  sha256 '85508ffff5b16353306ec56ad4436ac491cc3b01009137abbc16604249850e06'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'bdb4e17c16266b233f61e93273074625252ce2c433762e74bcccdde8e1195c9c'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
