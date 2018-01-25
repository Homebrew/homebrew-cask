cask 'wizard101' do
  version '1.13'
  sha256 'e994b59a6b53f2255168316b832962415b899260244ae36dfd4ba0aba201fcb9'

  url 'http://versionec.us.wizard101.com/Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com/Wizard101.xml',
          checkpoint: '20cdfeddb4bdcf8bca22c4c65b23525f8d2e58d7bbba049821f486a0cb79e85a'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end
