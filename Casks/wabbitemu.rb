cask 'wabbitemu' do
  version :latest
  sha256 :no_check

  # download-codeplex.sec.s-msft.com/Download was verified as official when first introduced to the cask
  url 'http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=wabbit&DownloadId=187234&FileTime=130242671530600000&Build=21040'
  name 'Wabbitemu TI Calculator Emulator'
  homepage 'https://wabbit.codeplex.com'

  app 'WabbitEmu.app'
end
