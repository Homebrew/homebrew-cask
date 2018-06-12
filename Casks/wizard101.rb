cask 'wizard101' do
  version '1.13'
  sha256 'e994b59a6b53f2255168316b832962415b899260244ae36dfd4ba0aba201fcb9'

  url 'http://versionec.us.wizard101.com/Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com/Wizard101.xml'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end
