cask 'toneprint' do
  version '4.1.10'
  sha256 'ea53e0c1e54d239766f1adf8c0dae5a017d900c7461e3c559799c570e02992cf'

  # downloads.music-group.com was verified as official when first introduced to the cask
  url "https://downloads.music-group.com/software/tcelectronic/TonePrintEditor/TonePrint-#{version}.dmg"
  appcast 'https://www.tcelectronic.com/p/P0CLC/Downloads'
  name 'TonePrint Editor'
  homepage 'https://www.tcelectronic.com/toneprint-editor/support/'

  app 'TonePrint.app'
end
