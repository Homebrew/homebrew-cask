cask 'vimr' do
  version '0.12.0-150'
  sha256 '09e51b6c0d105e633b32da7de1209ec181cc11b2c17813b2f857332ca160889d'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'f2144f5150e6cdd538cc4d617a0c99fff5d716569b277d0812ddbe012a2a4765'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
