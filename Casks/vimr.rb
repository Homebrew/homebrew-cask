cask 'vimr' do
  version '0.23.0-275'
  sha256 '436e5cb6557db3e4f4890207f27c846ad6d38d4c31243e8db7d87d0c927e13d9'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '37ad3dbaa128474836ed7dd3eed6a4f810b1709c39555df8b205eaa4b34228f7'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap trash: [
               '~/Library/Caches/com.qvacua.VimR',
               '~/Library/Preferences/com.qvacua.VimR.plist',
               '~/Library/Saved Application State/com.qvacua.VimR.savedState',
               '~/Library/WebKit/com.qvacua.VimR',
             ]
end
