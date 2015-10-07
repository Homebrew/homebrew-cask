cask :v1 => 'wizard101' do
  version :latest
  sha256  :no_check

  url 'https://www.wizard101.com/downloadGameMac/otherdownload'
  name 'Wizard101'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          :sha256 => 'cd1a2fdce2b114386c2e6bf77f157c2b7559d4c772a22681ec2cb41b451d0804'
  homepage 'https://www.wizard101.com/'
  license :unknown

  app 'Wizard101.app'
end
