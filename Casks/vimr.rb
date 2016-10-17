cask 'vimr' do
  version 'v0.9.0-SNAPSHOT-20161017.2152-107'
  sha256 '0ef84f2f2dddce3d0a4ab1c7578bf28d3ecd24d12e9554b7cac610974e4af447'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/snapshot%2f#{version}/VimR-#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'e4d44a53c967f8fc2e23d0d674bbc0e55875312431d6bc0944f5fff3a9cf7918'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
