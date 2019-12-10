cask 'vimr' do
  version '0.29.0-329'
  sha256 '2282c15c8b2886640148fdd34070786e817bdbfc399ad98b3fd18f8220f73a5a'

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
