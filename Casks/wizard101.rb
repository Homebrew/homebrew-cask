cask 'wizard101' do
  version '1.10'
  sha256 'cbb3f58869cff4a428ee74c50a49280aed4d2d616a1509ad5411f81f6e5ee529'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          checkpoint: 'e13f9d446a419b1ffa0dbcfe902746e66b4e3c7be9386fb3124874ef055fa8a9'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wizard101.app'
end
