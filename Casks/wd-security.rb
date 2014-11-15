cask :v1 => 'wd-security' do
  version '1.0.8.2'
  sha256 '1a82e8cd9d8e7d23b8201c6460c75cd6c388f8c588b6608caf2c31394b3fd37a'

  url "http://download.wdc.com/wdapp/WD_Security_For_Web_Mac_#{version.gsub('.','_')}.zip"
  homepage 'http://www.wdc.com/en/'
  license :unknown

  app 'WD Security.app'
end
