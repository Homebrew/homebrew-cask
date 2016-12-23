cask 'vimr' do
  version '0.12.1-151'
  sha256 '792e86dfc50579c701841858775f595fe9322e0f5187016b4131a91bc541d89f'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '61f6a66f902c1f3bbba344f25a3aa944252b0e5a25ecc5b1f6f9f833047da8f9'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
