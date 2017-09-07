cask 'vimr' do
  version '0.19.0-226'
  sha256 'bd8002b03698e9272546cd8b37722e999b68321fdd2197a090c30b311975db8f'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '60ce8e6e2d0016291a63225da5bef07d4f896c829198e8d40f7f32c9ef7e8f0f'
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
