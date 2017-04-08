cask 'wizard101' do
  version '1.11'
  sha256 '448bc39ff8cd4550b9391afe7ef336641169710c2758ba2fef9ddc39285d9ee6'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          checkpoint: '3b5058f478f19f087a420958107768f98575bf4c678faf112ea20302c21826b1'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end
