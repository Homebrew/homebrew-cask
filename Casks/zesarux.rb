cask 'zesarux' do
  version '5.0'
  sha256 '5b76f749aae19c11913c7a993fc019ee23a25f38f80c97e4ebe035409ca99c0c'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-macos_opengl.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: '3f52364d2813ea81f88caf703234a4511e3b138381e455133ef80e6b3cc80247'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end
