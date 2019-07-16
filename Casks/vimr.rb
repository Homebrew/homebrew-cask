cask 'vimr' do
  version '0.27.4-326'
  sha256 '41e06a2d3d6642a50e38d73bfecb6333344a9bad0ff948de1714d721613bcfec'

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
