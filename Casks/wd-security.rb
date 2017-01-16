cask 'wd-security' do
  version '2.0.5.15'
  sha256 '38018708b953fd9b1dd21fd9e1e446a3fbb5b2a5376760127a5953eb5dc81da1'

  url "http://download.wdc.com/wdapp/WD_Security_Installer_for_Mac_#{version.dots_to_underscores}.zip"
  name 'WD Security'
  homepage 'https://www.wdc.com/'

  app 'WD Security Installer.app'
end
