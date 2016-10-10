cask 'wdfirmwareupdater' do
  version :latest
  sha256 :no_check

  url 'http://download.wdc.com/fwupdater/Mac/WDFirmwareUpdater.zip'
  name 'WDFirmwareUpdater'
  homepage 'http://www.wdc.com/en/'

  app 'WDFirmwareUpdater.app'
end
