cask 'toneprint' do
  version '4.1.09-0'
  sha256 '013b181a44d16f9d2e477b7f325b31f6f20598e96a91fd8597c50fa9b6a6f692'

  # downloads.music-group.com was verified as official when first introduced to the cask
  url "https://downloads.music-group.com/software/tcelectronic/TonePrintEditor/TonePrint-#{version}_Mac.zip"
  appcast 'https://www.tcelectronic.com/p/P0CLC/Downloads'
  name 'TonePrint Editor'
  homepage 'https://www.tcelectronic.com/toneprint-editor/support/'

  app 'TonePrint.app'
end
