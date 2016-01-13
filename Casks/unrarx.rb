cask 'unrarx' do
  version '2.2'
  sha256 '616c5c536efb29a35fe45c8171874592cc28b269e5d7ed6947c19c8cbb686955'

  url "http://www.unrarx.com/files/UnRarX_#{version}.zip"
  appcast 'http://www.unrarx.com/update.xml',
          :checkpoint => 'a974da7a0f0a8f0bd8af190ca369ed67a276332f30ee24e384a9bb05aec46bfa'
  name 'UnRarX'
  homepage 'http://www.unrarx.com'
  license :gratis

  app 'UnRarX.app'
end
