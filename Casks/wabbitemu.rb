cask 'wabbitemu' do
  version '2.1'
  sha256 '23fc164767da10389eec858d022967fb58fdca1debaa5b9e022f2e9280a4f4e8'

  # download-codeplex.sec.s-msft.com was verified as official when first introduced to the cask
  url 'https://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=wabbit&DownloadId=187234&FileTime=130242671530600000&Build=21040'
  name 'Wabbitemu TI Calculator Emulator'
  homepage 'https://wabbit.codeplex.com'

  app 'WabbitEmu.app'
end
