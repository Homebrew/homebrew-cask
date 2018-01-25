cask 'zesarux' do
  version '6.0'
  sha256 '39b0bf63d0dca442fec6168bfc3092f5a1173ebbae5121115751e522f1d17621'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_macos_opengl-#{version}.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: '84791f020361f733f71187a31f7156ca4773f06654462be5ab3123a1c4071458'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end
