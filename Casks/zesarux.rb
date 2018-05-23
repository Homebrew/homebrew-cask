cask 'zesarux' do
  version '6.0'
  sha256 '39b0bf63d0dca442fec6168bfc3092f5a1173ebbae5121115751e522f1d17621'

  url "https://github.com/chernandezba/zesarux/releases/download/v#{version}/ZEsarUX_macos_opengl-#{version}.dmg.gz"
  appcast 'https://github.com/chernandezba/zesarux/releases.atom',
          checkpoint: 'd36e576e46c8110967f984e4cc518f30e7230b81168bce58a60fd10506cd15ea'
  name 'ZEsarUX'
  homepage 'https://github.com/chernandezba/zesarux'

  app 'ZEsarUX.app'
end
