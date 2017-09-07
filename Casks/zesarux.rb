cask 'zesarux' do
  version '5.0'
  sha256 '5b76f749aae19c11913c7a993fc019ee23a25f38f80c97e4ebe035409ca99c0c'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-macos_opengl.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: 'a1e38d8d8ad7631a9a12def75b7d9013f2cc4344dbd15def32e60ee8b5453a5b'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end
