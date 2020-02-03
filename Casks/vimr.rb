cask 'vimr' do
  version '0.31.0-337'
  sha256 '121175fa58499262060fec4f329a88b91bb63b3e07cec27ee2e10e793daa809d'

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
