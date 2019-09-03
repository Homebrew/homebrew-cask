cask 'toneprint' do
  version '4.1.10'
  sha256 'a0104ea2e55cc44c5c95a7d59e0e8e2b54d15e51d2b7442de425f87879939646'

  # downloads.music-group.com was verified as official when first introduced to the cask
  url "https://downloads.music-group.com/software/tcelectronic/TonePrintEditor/TonePrint-#{version}.dmg"
  appcast 'https://www.tcelectronic.com/p/P0CLC/Downloads'
  name 'TonePrint Editor'
  homepage 'https://www.tcelectronic.com/toneprint-editor/support/'

  app 'TonePrint.app'
end
