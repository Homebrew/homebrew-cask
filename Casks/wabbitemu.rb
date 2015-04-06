cask :v1 => 'wabbitemu' do
  version '2.1'
  sha256 '23fc164767da10389eec858d022967fb58fdca1debaa5b9e022f2e9280a4f4e8'

  url 'http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=wabbit&DownloadId=187234&FileTime=130242671530600000&Build=20983'
  name 'WabbitEmu'
  homepage 'https://wabbit.codeplex.com'
  license :gpl

  app 'WabbitEmu.app'
end
