cask 'vimr' do
  version '0.19.1-229'
  sha256 'fc2b0fdf37f57683c60c81951bb4f6c154f1b4b9e773f6caccbf1e5aa3a59b8b'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '8e750ed2e2b859f319e2a93923ce5f4cc807ee2b25f72b09e009eeb18c7291e4'
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
