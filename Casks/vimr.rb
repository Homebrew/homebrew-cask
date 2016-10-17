cask 'vimr' do
  version '0.9.0-SNAPSHOT-20161017.2152-107'
  sha256 '0ef84f2f2dddce3d0a4ab1c7578bf28d3ecd24d12e9554b7cac610974e4af447'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/snapshot%2fv#{version}/VimR-#v{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'ee806d0b9294d6a886dc659f951a250fe3d4bbfcb75d919a8cc7768d922dd1b4'
  name 'VimR'
  homepage 'http://vimr.org/'

  auto_updates true

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
