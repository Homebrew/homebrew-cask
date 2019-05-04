cask 'vimr' do
  version '0.27.3-325'
  sha256 '007073570040e59be66d44f73ca15a6e6ae1a5d100d1705a1ea8c467c3ad967c'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom'
  name 'VimR'
  homepage 'http://vimr.org/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap trash: [
               '~/Library/Caches/com.qvacua.VimR',
               '~/Library/Preferences/com.qvacua.VimR.plist',
               '~/Library/Saved Application State/com.qvacua.VimR.savedState',
               '~/Library/WebKit/com.qvacua.VimR',
             ]
end
