cask 'vimr' do
  version '0.18.0-217'
  sha256 'ef51027f68009c6683cab3dea4ffe4548e5fb964a658d9df2d8e1c78c71143fe'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '9f91877fd0859608c6de8438c63fbe89cb47b5a3e10006a2396c721a83a02e91'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap delete: [
                '~/Library/Caches/com.qvacua.VimR',
                '~/Library/Saved Application State/com.qvacua.VimR.savedState',
                '~/Library/WebKit/com.qvacua.VimR',
              ],
      trash:  '~/Library/Preferences/com.qvacua.VimR.plist'
end
