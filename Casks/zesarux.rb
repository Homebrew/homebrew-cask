cask 'zesarux' do
  version '7.1'
  sha256 '4f1ff58d5d03a2e32c2f218ecbd5e6009e9123ca0e5141f4ba62863d0138a37e'

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}-final/ZEsarUX_macos_opengl-#{version}.dmg.gz"
  appcast 'https://github.com/chernandezba/zesarux/releases.atom'
  name 'ZEsarUX'
  homepage 'https://github.com/chernandezba/zesarux'

  app 'ZEsarUX.app'
end
