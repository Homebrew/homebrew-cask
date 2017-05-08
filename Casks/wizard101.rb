cask 'wizard101' do
  version '1.11'
  sha256 '006a832ef8a3741cfb4394bb5ea5d08a60ba381bced7fb1615f51334ffab7c8b'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          checkpoint: 'b5f24bf545d3eb847dcb299002b2a611996ad3db12cfd3bebafcf3561e4711dc'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end
