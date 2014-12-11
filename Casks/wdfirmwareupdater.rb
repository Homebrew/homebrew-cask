cask :v1 => 'wdfirmwareupdater' do
  version :latest
  sha256 :no_check

  url 'http://download.wdc.com/fwupdater/Mac/WDFirmwareUpdater.zip'
  homepage 'http://www.wdc.com/en/'
  license :unknown    # todo: improve this machine-generated value

  app 'WDFirmwareUpdater.app'
end
