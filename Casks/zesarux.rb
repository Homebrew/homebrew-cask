cask 'zesarux' do
  version '7.0'
  sha256 'c9c515218ec474bfb042294f57c99929996bc48796e8a3e1f458d385268a3d92'

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}/ZEsarUX_macos_opengl-#{version}.dmg.gz"
  appcast 'https://github.com/chernandezba/zesarux/releases.atom'
  name 'ZEsarUX'
  homepage 'https://github.com/chernandezba/zesarux'

  app 'ZEsarUX.app'
end
