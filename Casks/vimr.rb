cask 'vimr' do
  version '0.12.6-162'
  sha256 'b30571104ed858ae28cd4aef0d1f1457f57c96cbb25c2d5cfd6bfe5a1c1adcc1'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '5243dc7cf8df5c35aac65588c350e3e6d41c8674b37ac54e362f98a05485cd6c'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
