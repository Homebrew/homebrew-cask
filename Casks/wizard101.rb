cask 'wizard101' do
  version '1.10'
  sha256 '524694a96f33e98e6b63be1804c9fc2ad173fc324b1928b5d36dbcfe47ed8908'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          checkpoint: 'aad04168f49ab14661ac4ff399796d54095fcb2d91cf379affed3c8ccda273a5'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wizard101.app'
end
