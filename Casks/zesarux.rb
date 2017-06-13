cask 'zesarux' do
  version '5.0'
  sha256 '5b76f749aae19c11913c7a993fc019ee23a25f38f80c97e4ebe035409ca99c0c'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-macos_opengl.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: 'f2e8c05960aed20b184630b690813fa45e415a61fa6e30b79568cb0a86365ba2'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end
