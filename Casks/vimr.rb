cask 'vimr' do
  version '0.19.1-229'
  sha256 'fc2b0fdf37f57683c60c81951bb4f6c154f1b4b9e773f6caccbf1e5aa3a59b8b'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '4b981e212908fcaefda5e885333832be4fd74305dd2af8bc860bd69ce889496b'
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
