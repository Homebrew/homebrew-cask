cask 'xdebug-toggler' do
  version '1.1.0'
  sha256 '025d25ab467ac76de911bd226d0836e57d3bae32f2e611850527879d549b0aad'

  url "https://github.com/deligoez/xDebug-Toggler/releases/download/#{version}/xDebugToggler.dmg"
  appcast 'https://github.com/deligoez/xDebug-Toggler/releases.atom'
  name 'xDebugToggler'
  homepage 'https://github.com/deligoez/xDebug-Toggler'

  app 'xDebugToggler.app'
end
