cask 'wizard101' do
  version '1.10'
  sha256 'cbb3f58869cff4a428ee74c50a49280aed4d2d616a1509ad5411f81f6e5ee529'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          :sha256 => '2e6dcb002e411bc8a692a4f10f4437e311c14d8f87cd8ef3ed820429ae23ca97'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wizard101.app'
end
